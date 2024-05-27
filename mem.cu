#include <stdio.h>
#include <cuda_runtime.h>

__global__ void ikernel()
{
    printf("hello world\n");
}

int main()
{
    // cuda hello world
    cudaStream_t stream;
    cudaStreamCreate(&stream);
    ikernel<<<4, 4, 0, stream>>>();
    cudaStreamSynchronize(stream);
    cudaStreamDestroy(stream);
    return 0;
}