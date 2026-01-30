#include <stdio.h>
#include <stdlib.h>
#include <cuda_runtime.h>

#define TILE_WIDTH 16 
__global__ void matrixMultiplyTiled(float *A, float *B, float *C, int N) { 
    __shared__ float ds_A[TILE_WIDTH][TILE_WIDTH]; 
    __shared__ float ds_B[TILE_WIDTH][TILE_WIDTH]; 
    int bx = blockIdx.x; int by = blockIdx.y; 
    int tx = threadIdx.x; int ty = threadIdx.y; 
    int Row = by * TILE_WIDTH + ty; 
    int Col = bx * TILE_WIDTH + tx; 
    float Pvalue = 0.0; 
    for (int m = 0; m < (N + TILE_WIDTH - 1) / TILE_WIDTH; ++m) { 
    if (Row < N && (m*TILE_WIDTH+tx) < N) 
    ds_A[ty][tx] = A[Row * N + m * TILE_WIDTH + tx]; 
    else 
    ds_A[ty][tx] = 0.0f; 
    if (Col < N && (m*TILE_WIDTH+ty) < N) 
    ds_B[ty][tx] = B[(m*TILE_WIDTH + ty) * N + Col]; 
    else 
    ds_B[ty][tx] = 0.0f; 
    __syncthreads(); 
    for (int k = 0; k < TILE_WIDTH; ++k) 
    Pvalue += ds_A[ty][k] * ds_B[k][tx]; 
    __syncthreads(); 
    } 
    if (Row < N && Col < N) 
    C[Row * N + Col] = Pvalue; 
}
static inline void checkCuda(cudaError_t err, const char* msg) {
    if (err != cudaSuccess) {
        fprintf(stderr, "CUDA Error: %s : %s\n", msg, cudaGetErrorString(err));
    }
}
extern "C" void matmul_gpu_hostptr(float *h_A, float *h_B, float *h_C, int N) {
    size_t bytes = sizeof(float) * (size_t)N * (size_t)N;
    float *d_A = nullptr, *d_B = nullptr, *d_C = nullptr;

    checkCuda(cudaMalloc((void**)&d_A, bytes), "cudaMalloc d_A");
    checkCuda(cudaMalloc((void**)&d_B, bytes), "cudaMalloc d_B");
    checkCuda(cudaMalloc((void**)&d_C, bytes), "cudaMalloc d_C");

    checkCuda(cudaMemcpy(d_A, h_A, bytes, cudaMemcpyHostToDevice), "memcpy A->d_A");
    checkCuda(cudaMemcpy(d_B, h_B, bytes, cudaMemcpyHostToDevice), "memcpy B->d_B");

    dim3 dimBlock(TILE_WIDTH, TILE_WIDTH);
    dim3 dimGrid((N + TILE_WIDTH - 1) / TILE_WIDTH, (N + TILE_WIDTH - 1) / TILE_WIDTH);

    // 启动 kernel
    matrixMultiplyTiled<<<dimGrid, dimBlock>>>(d_A, d_B, d_C, N);

    // 同步并检查错误
    checkCuda(cudaGetLastError(), "kernel launch");
    checkCuda(cudaDeviceSynchronize(), "device synchronize");

    checkCuda(cudaMemcpy(h_C, d_C, bytes, cudaMemcpyDeviceToHost), "memcpy d_C->C");

    cudaFree(d_A);
    cudaFree(d_B);
    cudaFree(d_C);
}


int main(int argc, char **argv) {
    int N = (argc > 1) ? atoi(argv[1]) : 1024;
    size_t size = N * N * sizeof(float);

    float *h_A = (float *)malloc(size);
    float *h_B = (float *)malloc(size);
    float *h_C = (float *)malloc(size);

    for (int i = 0; i < N * N; i++) {
        h_A[i] = rand() % 100 / 100.0f;
        h_B[i] = rand() % 100 / 100.0f;
    }

    float *d_A, *d_B, *d_C;
    cudaMalloc((void **)&d_A, size);
    cudaMalloc((void **)&d_B, size);
    cudaMalloc((void **)&d_C, size);

    cudaMemcpy(d_A, h_A, size, cudaMemcpyHostToDevice);
    cudaMemcpy(d_B, h_B, size, cudaMemcpyHostToDevice);

    dim3 dimBlock(TILE_WIDTH, TILE_WIDTH);
    dim3 dimGrid(
        (N + TILE_WIDTH - 1) / TILE_WIDTH,
        (N + TILE_WIDTH - 1) / TILE_WIDTH
    );

    cudaEvent_t start, stop;
    cudaEventCreate(&start);
    cudaEventCreate(&stop);

    cudaEventRecord(start);
    matrixMultiplyTiled<<<dimGrid, dimBlock>>>(d_A, d_B, d_C, N);
    cudaEventRecord(stop);

    cudaEventSynchronize(stop);

    float milliseconds = 0.0f;
    cudaEventElapsedTime(&milliseconds, start, stop);

    cudaMemcpy(h_C, d_C, size, cudaMemcpyDeviceToHost);

    printf("Optimized CUDA (Tiled) execution time (N=%d): %f ms\n",
           N, milliseconds);

    cudaEventDestroy(start);
    cudaEventDestroy(stop);
    cudaFree(d_A);
    cudaFree(d_B);
    cudaFree(d_C);
    free(h_A);
    free(h_B);
    free(h_C);

    return 0;
}
