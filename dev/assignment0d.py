#fmul    v31.4s, v0.4s, v4.4s     // like what we did before break: v31 is a temporary
#faddp   v31.4s, v31.4s, v31.4s   // this does one addition
#faddp   v31.2s, v31.2s, v31.2s   // this does another addition
#ins    v8.s[0], v31.s[0]         // this copies the sum we care about to the appropriate part of our answer

from pathlib import Path

script_dir = Path(__file__).resolve().parent

# File you want to write, next to this script
output_path = script_dir / "instructions.s"

with open(output_path, "w") as file:
    
    for i in range(4):
        for j in range(4):
            file.write(f"fmul   v31.4s, v{i}.4s, v{j+4}.4s\n")
            file.write("faddp   v31.4s, v31.4s, v31.4s\n")
            file.write("faddp   v31.2s, v31.2s, v31.2s\n")
            file.write(f"ins    v{i+8}.s[{j}], v31.s[0]\n")