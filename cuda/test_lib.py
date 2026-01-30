import ctypes 
import numpy as np 
import time 
# Load shared library 
lib = ctypes.cdll.LoadLibrary("./libmatrix.so") 
# Define argument types 
lib.matmul_gpu_hostptr.argtypes = [ 
    np.ctypeslib.ndpointer(dtype=np.float32, ndim=1, flags="C_CONTIGUOUS"), 
    np.ctypeslib.ndpointer(dtype=np.float32, ndim=1, flags="C_CONTIGUOUS"), 
    np.ctypeslib.ndpointer(dtype=np.float32, ndim=1, flags="C_CONTIGUOUS"), 
    ctypes.c_int 
]
N = 1024 
A = np.random.rand(N, N).astype(np.float32) 
B = np.random.rand(N, N).astype(np.float32) 
C = np.zeros((N, N), dtype=np.float32) 
start = time.time() 
lib.matmul_gpu_hostptr(A.ravel(), B.ravel(), C.ravel(), N) 
end = time.time() 
print("C[0:5, 0:5] =")
print(C[:5, :5])
print(f"Python call to CUDA library completed in {end - start:.4f} seconds")