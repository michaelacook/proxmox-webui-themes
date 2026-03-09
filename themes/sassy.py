import time
import os
import sys

try:
    import sass
except ImportError:
    print("FATAL: libsass or watchdog package not installed but required")
    exit(1)

self_location = os.path.dirname(os.path.realpath(__file__))
sass_out_last_generated = 0

def compile(sass_src_name, sass_src_path, sass_out_path):
    global sass_out_last_generated
    if time.time() - sass_out_last_generated < 0.5:
        return
    with open(sass_out_path, "w") as f:
        try:
            f.write(sass.compile(filename=sass_src_path, output_style="compressed"))
            print(f"Compiled {sass_src_name} to {os.path.basename(sass_out_path)}")
        except sass.CompileError as e:
            print(f"ERROR: {e}")
        sass_out_last_generated = time.time()
