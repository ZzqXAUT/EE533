#define STB_IMAGE_IMPLEMENTATION
#define STB_IMAGE_WRITE_IMPLEMENTATION

#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <stdint.h>
#include <math.h>
#include <time.h>

#include "stb_image.h"
#include "stb_image_write.h"

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
            unsigned char r=0,g=0,b=0,a=255;
            if (channels >= 1) r = data[idx+0];
            if (channels >= 2) g = data[idx+1];
            if (channels >= 3) b = data[idx+2];
            if (channels >= 4) a = data[idx+3];
            // compute luminance from RGB (standard rec.601)
            float lum = 0.299f*r + 0.587f*g + 0.114f*b;
            int lum_i = (int)roundf(lum);
            if (lum_i < 0) lum_i = 0;
            if (lum_i > 255) lum_i = 255;
            out[y*w + x] = (uint32_t)lum_i;
        }
    }
    return out;
}
void conv_cpu_uint32(const uint32_t* in, uint32_t* out, int w, int h, const float* kernel, int N) {
    int half = N/2;
    for (int y=0;y<h;y++){
        for (int x=0;x<w;x++){
            double sum = 0.0;
            for (int ky=0; ky<N; ky++){
                int yy = y + ky - half;
                for (int kx=0; kx<N; kx++){
                    int xx = x + kx - half;
                    if (xx < 0 || xx >= w || yy < 0 || yy >= h) {
                        continue; // zero padding
                    }
                    float kval = kernel[ky*N + kx];
                    uint32_t pix = in[yy*w + xx];
                    sum += kval * (double)pix;
                }
            }
            // clamp to [0,255]
            int v = (int)round(sum);
            if (v < 0) v = 0;
            if (v > 255) v = 255;
            out[y*w + x] = (uint32_t)v;
        }
    }
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
    if (!img) {
        fprintf(stderr, "Failed to load image %s\n", inpath);
        return 1;
    }
    printf("Loaded %s: %d x %d, channels=%d\n", inpath, w, h, channels);

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
    printf("Using kernel size %d x %d\n", N, N);

    uint32_t* in_gray = rgba_to_gray_uint32(img, w, h, channels);
    if (!in_gray) { stbi_image_free(img); free(kernel); return 1; }
    uint32_t* out_gray = (uint32_t*)malloc(sizeof(uint32_t)*w*h);
    if (!out_gray) { stbi_image_free(img); free(kernel); free(in_gray); return 1; }

    struct timespec t0, t1;
    if (clock_gettime(CLOCK_MONOTONIC, &t0) != 0) {
        perror("clock_gettime");
    }
    conv_cpu_uint32(in_gray, out_gray, w, h, kernel, N);
    if (clock_gettime(CLOCK_MONOTONIC, &t1) != 0) {
        perror("clock_gettime");
    }
    double elapsed = (double)(t1.tv_sec - t0.tv_sec) + (double)(t1.tv_nsec - t0.tv_nsec) * 1e-9;
    printf("conv_cpu_uint32 elapsed: %.9f ms\n", elapsed * 1000);

    unsigned char* out_buf = (unsigned char*)malloc(w*h);
    for (int i=0;i<w*h;i++) {
        uint32_t v = out_gray[i];
        if (v > 255) v = 255;
        out_buf[i] = (unsigned char)v;
    }

    if (!stbi_write_png(outpath, w, h, 1, out_buf, w)) {
        fprintf(stderr, "Failed to write %s\n", outpath);
    } else {
        printf("Wrote output %s\n", outpath);
    }

    // cleanup
    stbi_image_free(img);
    free(kernel);
    free(in_gray);
    free(out_gray);
    free(out_buf);

    return 0;
}
