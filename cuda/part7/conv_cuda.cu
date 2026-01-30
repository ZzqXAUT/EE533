#define STB_IMAGE_IMPLEMENTATION
#define STB_IMAGE_WRITE_IMPLEMENTATION
#include <stdio.h>
#include <stdlib.h>
#include <stdint.h>
#include <math.h>
#include "stb_image.h"
#include "stb_image_write.h"

#include <cuda_runtime.h>

__global__ void conv_kernel_uint32(
    const uint32_t* in, uint32_t* out, int w, int h,
    const float* kernel, int N)
{
    int x = blockIdx.x * blockDim.x + threadIdx.x;
    int y = blockIdx.y * blockDim.y + threadIdx.y;
    if (x >= w || y >= h) return;
    int half = N/2;
    double sum = 0.0;
    for (int ky=0; ky<N; ky++){
        int yy = y + ky - half;
        for (int kx=0; kx<N; kx++){
            int xx = x + kx - half;
            if (xx < 0 || xx >= w || yy < 0 || yy >= h) continue;
            float kval = kernel[ky*N + kx];
            uint32_t pix = in[yy*w + xx];
            sum += kval * (double)pix;
        }
    }
    int v = (int)round(sum);
    if (v < 0) v = 0;
    if (v > 255) v = 255;
    out[y*w + x] = (uint32_t)v;
}

float* read_kernel_file(const char* path, int* Nout) {
    FILE* f = fopen(path, "r");
    if (!f) return NULL;
    int N;
    if (fscanf(f, "%d", &N) != 1) { fclose(f); return NULL; }
    if (N <= 0 || N % 2 == 0) { fclose(f); return NULL; }
    float* k = (float*)malloc(sizeof(float)*N*N);
    for (int i=0;i<N*N;i++){
        if (fscanf(f, "%f", &k[i]) != 1) {
            free(k); fclose(f); return NULL;
        }
    }
    fclose(f);
    *Nout = N;
    return k;
}
float* default_kernel(int* Nout) {
    *Nout = 3;
    float* k = (float*)malloc(sizeof(float)*9);
    float tmp[9] = {0,-1,0,-1,5,-1,0,-1,0};
    memcpy(k, tmp, sizeof(tmp));
    return k;
}
uint32_t* rgba_to_gray_uint32(const unsigned char* data, int w, int h, int channels) {
    uint32_t* out = (uint32_t*)malloc(sizeof(uint32_t)*w*h);
    if (!out) return NULL;
    for (int y=0;y<h;y++){
        for (int x=0;x<w;x++){
            int idx = (y*w + x)*channels;
            unsigned char r=0,g=0,b=0;
            if (channels >= 1) r = data[idx+0];
            if (channels >= 2) g = data[idx+1];
            if (channels >= 3) b = data[idx+2];
            float lum = 0.299f*r + 0.587f*g + 0.114f*b;
            int lum_i = (int)roundf(lum);
            if (lum_i < 0) lum_i = 0;
            if (lum_i > 255) lum_i = 255;
            out[y*w + x] = (uint32_t)lum_i;
        }
    }
    return out;
}

int main(int argc, char** argv) {
    if (argc < 3) {
        printf("Usage: %s input.png output.png [kernel.txt]\n", argv[0]);
        return 1;
    }
    const char* inpath = argv[1];
    const char* outpath = argv[2];
    const char* kernelpath = (argc >= 4) ? argv[3] : NULL;

    int w,h,channels;
    unsigned char* img = stbi_load(inpath, &w, &h, &channels, 0);
    if (!img) { fprintf(stderr,"Failed load %s\n", inpath); return 1; }
    printf("Loaded %s : %d x %d channels=%d\n", inpath, w,h,channels);

    int N;
    float* kernel = NULL;
    if (kernelpath) {
        kernel = read_kernel_file(kernelpath, &N);
        if (!kernel) {
            fprintf(stderr, "Failed to read kernel file %s, using default.\n", kernelpath);
            kernel = default_kernel(&N);
        }
    } else {
        kernel = default_kernel(&N);
    }
    printf("Kernel size %d\n", N);

    uint32_t* in_gray = rgba_to_gray_uint32(img, w, h, channels);
    if (!in_gray) { stbi_image_free(img); free(kernel); return 1; }
    uint32_t* out_gray = (uint32_t*)malloc(sizeof(uint32_t)*w*h);

    // allocate device memory
    uint32_t *d_in = NULL, *d_out = NULL;
    float *d_kernel = NULL;
    size_t img_bytes = sizeof(uint32_t)*w*h;
    size_t kernel_bytes = sizeof(float)*N*N;
    cudaMalloc((void**)&d_in, img_bytes);
    cudaMalloc((void**)&d_out, img_bytes);
    cudaMalloc((void**)&d_kernel, kernel_bytes);

    cudaMemcpy(d_in, in_gray, img_bytes, cudaMemcpyHostToDevice);
    cudaMemcpy(d_kernel, kernel, kernel_bytes, cudaMemcpyHostToDevice);

    dim3 block(16,16);
    dim3 grid((w + block.x -1)/block.x, (h + block.y -1)/block.y);

    cudaEvent_t ev_start, ev_stop;
    cudaEventCreate(&ev_start);
    cudaEventCreate(&ev_stop);

    cudaEventRecord(ev_start, 0);
    conv_kernel_uint32<<<grid, block>>>(d_in, d_out, w, h, d_kernel, N);
    cudaEventRecord(ev_stop, 0);

    cudaEventSynchronize(ev_stop);

    float kernel_ms = 0.0f;
    cudaEventElapsedTime(&kernel_ms, ev_start, ev_stop);

    // destroy events
    cudaEventDestroy(ev_start);
    cudaEventDestroy(ev_stop);

    cudaDeviceSynchronize();

    cudaMemcpy(out_gray, d_out, img_bytes, cudaMemcpyDeviceToHost);

    // write to PNG
    unsigned char* out_buf = (unsigned char*)malloc(w*h);
    for (int i=0;i<w*h;i++){
        uint32_t v = out_gray[i];
        if (v > 255) v = 255;
        out_buf[i] = (unsigned char)v;
    }
    if (!stbi_write_png(outpath, w, h, 1, out_buf, w)) {
        fprintf(stderr,"Failed to write %s\n", outpath);
    } else {
        printf("Wrote %s\n", outpath);
    }

    // print kernel timing
    printf("Kernel execution time: %.3f ms\n", kernel_ms);

    // cleanup
    stbi_image_free(img);
    free(kernel);
    free(in_gray);
    free(out_gray);
    free(out_buf);
    cudaFree(d_in);
    cudaFree(d_out);
    cudaFree(d_kernel);

    return 0;
}

#include <time.h>

static double _now_seconds() {
    struct timespec t;
    clock_gettime(CLOCK_MONOTONIC, &t);
    return (double)t.tv_sec + (double)t.tv_nsec * 1e-9;
}

extern "C" int conv_cuda_file(const char* inpath, const char* outpath, const char* kernelpath,
                               float* out_kernel_ms, double* out_total_s)
{
    double t_start = _now_seconds();

    int w,h,channels;
    unsigned char* img = stbi_load(inpath, &w, &h, &channels, 0);
    if (!img) {
        fprintf(stderr, "conv_cuda_file: Failed load %s\n", inpath);
        return 1;
    }

    int N;
    float* kernel = NULL;
    if (kernelpath) {
        kernel = read_kernel_file(kernelpath, &N);
        if (!kernel) {
            fprintf(stderr, "conv_cuda_file: Failed to read kernel file %s, using default.\n", kernelpath);
            kernel = default_kernel(&N);
        }
    } else {
        kernel = default_kernel(&N);
    }

    uint32_t* in_gray = rgba_to_gray_uint32(img, w, h, channels);
    if (!in_gray) { stbi_image_free(img); free(kernel); return 2; }
    uint32_t* out_gray = (uint32_t*)malloc(sizeof(uint32_t) * (size_t)w * (size_t)h);
    if (!out_gray) { stbi_image_free(img); free(kernel); free(in_gray); return 3; }

    // allocate device memory
    uint32_t *d_in = NULL, *d_out = NULL;
    float *d_kernel = NULL;
    size_t img_bytes = sizeof(uint32_t) * (size_t)w * (size_t)h;
    size_t kernel_bytes = sizeof(float) * (size_t)N * (size_t)N;

    cudaError_t cerr;
    cerr = cudaMalloc((void**)&d_in, img_bytes);
    if (cerr != cudaSuccess) { fprintf(stderr,"conv_cuda_file: cudaMalloc d_in failed: %s\n", cudaGetErrorString(cerr)); goto error; }
    cerr = cudaMalloc((void**)&d_out, img_bytes);
    if (cerr != cudaSuccess) { fprintf(stderr,"conv_cuda_file: cudaMalloc d_out failed: %s\n", cudaGetErrorString(cerr)); goto error; }
    cerr = cudaMalloc((void**)&d_kernel, kernel_bytes);
    if (cerr != cudaSuccess) { fprintf(stderr,"conv_cuda_file: cudaMalloc d_kernel failed: %s\n", cudaGetErrorString(cerr)); goto error; }

    cerr = cudaMemcpy(d_in, in_gray, img_bytes, cudaMemcpyHostToDevice);
    if (cerr != cudaSuccess) { fprintf(stderr,"conv_cuda_file: cudaMemcpy H2D d_in failed: %s\n", cudaGetErrorString(cerr)); goto error; }
    cerr = cudaMemcpy(d_kernel, kernel, kernel_bytes, cudaMemcpyHostToDevice);
    if (cerr != cudaSuccess) { fprintf(stderr,"conv_cuda_file: cudaMemcpy H2D d_kernel failed: %s\n", cudaGetErrorString(cerr)); goto error; }

    dim3 block(16,16);
    dim3 grid((w + block.x -1)/block.x, (h + block.y -1)/block.y);

    // measure kernel execution using cudaEvent (same as your main)
    cudaEvent_t ev_start, ev_stop;
    cudaEventCreate(&ev_start);
    cudaEventCreate(&ev_stop);

    cudaEventRecord(ev_start, 0);
    conv_kernel_uint32<<<grid, block>>>(d_in, d_out, w, h, d_kernel, N);
    cudaEventRecord(ev_stop, 0);

    cudaEventSynchronize(ev_stop);

    float kernel_ms_local = 0.0f;
    cudaEventElapsedTime(&kernel_ms_local, ev_start, ev_stop);

    // destroy events
    cudaEventDestroy(ev_start);
    cudaEventDestroy(ev_stop);

    // ensure kernel finished
    cudaDeviceSynchronize();

    cerr = cudaMemcpy(out_gray, d_out, img_bytes, cudaMemcpyDeviceToHost);
    if (cerr != cudaSuccess) { fprintf(stderr,"conv_cuda_file: cudaMemcpy D2H failed: %s\n", cudaGetErrorString(cerr)); goto error; }

    // write to PNG (8-bit grayscale)
    unsigned char* out_buf = (unsigned char*)malloc((size_t)w * (size_t)h);
    if (!out_buf) { fprintf(stderr,"conv_cuda_file: alloc out_buf failed\n"); goto error; }
    for (size_t i=0;i<(size_t)w*(size_t)h;i++){
        uint32_t v = out_gray[i];
        if (v > 255) v = 255;
        out_buf[i] = (unsigned char)v;
    }
    if (!stbi_write_png(outpath, w, h, 1, out_buf, w)) {
        fprintf(stderr,"conv_cuda_file: stbi_write_png failed for %s\n", outpath);
        free(out_buf);
        goto error;
    }
    free(out_buf);

    // cleanup
    cudaFree(d_in);
    cudaFree(d_out);
    cudaFree(d_kernel);

    stbi_image_free(img);
    free(kernel);
    free(in_gray);
    free(out_gray);

    double t_end = _now_seconds();
    if (out_kernel_ms) *out_kernel_ms = kernel_ms_local;
    if (out_total_s) *out_total_s = (t_end - t_start);

    return 0;

error:
    if (d_in) cudaFree(d_in);
    if (d_out) cudaFree(d_out);
    if (d_kernel) cudaFree(d_kernel);
    if (img) stbi_image_free(img);
    if (kernel) free(kernel);
    if (in_gray) free(in_gray);
    if (out_gray) free(out_gray);
    return 10;
}
