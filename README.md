# Maze-Runner-Assembly
Maze Runner is a retro-style text-based maze game written in x86 Assembly language, built for the Intel 8088 architecture. The game runs in a DOS environment using NASM (Netwide Assembler). It showcases direct video memory manipulation and keyboard input handling at the hardware level.

##Requirements
->NASM (Netwide Assembler for DOS)
->DOSBox (DOS emulator to run the game on modern systems)

##How to Assemble and Run (in DOSBox using NASM)
1️⃣ Place your proj.asm gimmefan.imf file inside a folder. Let’s call it C:\asmprojects.
2️⃣ Mount the folder in DOSBox:
bash
Copy
Edit
mount c c:\asmprojects
c:
3️⃣ Assemble the file with NASM:
bash
Copy
Edit
nasm -f bin proj.asm -o proj.com
📝 Note:
Since DOS prefers .COM executables for small Assembly programs (and you're likely writing it as a .COM program if it's for 8088 DOS), we assemble to a flat binary format (-f bin) and name the output .com.

4️⃣ Run the game:
bash
Copy
Edit
proj.com
