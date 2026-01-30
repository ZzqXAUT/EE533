# Create a line plot comparing execution time vs matrix size
import matplotlib.pyplot as plt

# Data from the table (all in milliseconds)
matrix_sizes = [512, 1024, 2048, 4096]

cpu_time = [188.9, 2305.3, 85580.1, 886769.7]
naive_cuda = [0.8596, 3.7231, 26.6498, 205.2493]
optimized_cuda = [0.8947, 2.9560, 20.2652, 157.1949]
cublas = [5.3814, 6.0619, 7.4863, 25.7582]

plt.figure()
plt.plot(matrix_sizes, cpu_time, marker='o', label='CPU')
plt.plot(matrix_sizes, naive_cuda, marker='o', label='Naïve CUDA')
plt.plot(matrix_sizes, optimized_cuda, marker='o', label='Optimized CUDA')
plt.plot(matrix_sizes, cublas, marker='o', label='cuBLAS')

plt.xlabel("Matrix Size (N)")
plt.ylabel("Execution Time (ms)")
plt.title("Execution Time vs Matrix Size (Log Scale)")

# ===== 关键：使用 log10 纵坐标 =====
plt.yscale("log")

plt.legend()
plt.grid(True, which="both", linestyle="--")

# 保存图片
plt.savefig("execution_time_vs_matrix_size_log.png", dpi=300, bbox_inches="tight")

plt.show()
