# gen_rand_pngs.py
# Usage: python gen_rand_pngs.py out_prefix num_images width height
# Example: python gen_rand_pngs.py rand 3 512 512
import sys
import numpy as np
from PIL import Image

def uint32_to_rgba_bytes(arr):
    # arr: uint32 numpy array (H,W)
    r = ((arr >> 24) & 0xFF).astype(np.uint8)
    g = ((arr >> 16) & 0xFF).astype(np.uint8)
    b = ((arr >> 8)  & 0xFF).astype(np.uint8)
    a = ((arr >> 0)  & 0xFF).astype(np.uint8)
    rgba = np.stack([r,g,b,a], axis=2)
    return rgba

def gen_random_uint32_png(filename, w, h):
    # Generate random uint32 values across full 0..0xffffffff
    arr = np.random.randint(0, 2**32, size=(h,w), dtype=np.uint64).astype(np.uint32)
    rgba = uint32_to_rgba_bytes(arr)
    img = Image.fromarray(rgba, mode='RGBA')
    img.save(filename, format='PNG')
    print("Wrote", filename)

if __name__ == "__main__":
    if len(sys.argv) < 5:
        print("Usage: python gen_rand_pngs.py out_prefix num_images width height")
        sys.exit(1)
    prefix = sys.argv[1]
    num = int(sys.argv[2])
    w = int(sys.argv[3])
    h = int(sys.argv[4])
    for i in range(num):
        fname = f"{prefix}_{i}.png"
        gen_random_uint32_png(fname, w, h)
