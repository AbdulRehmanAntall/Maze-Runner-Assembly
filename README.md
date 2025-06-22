# Maze-Runner-Assembly

Maze Runner is a retro-style text-based maze game written in **x86 Assembly language**, built for the **Intel 8088 architecture**. The game runs in a **DOS environment** using **NASM (Netwide Assembler)**. It showcases direct video memory manipulation and keyboard input handling at the hardware level.

## Requirements

- NASM (Netwide Assembler for DOS)
- DOSBox (DOS emulator to run the game on modern systems)

## How to Assemble and Run (in DOSBox using NASM)

1. Place your `proj.asm` and any required files like `gimmefan.imf` inside a folder. Let’s call it `C:\asmprojects`.

2. Mount the folder in DOSBox:
   ```bash
   mount c c:\asmprojects

   
4. Assemble the file with NASM:
 ```bash
   nasm -f bin proj.asm -o proj.com
```

5. Run the game:
```bash
   proj.com
```

## Notes

- Make sure NASM is either placed in the same folder as your `.asm` file or properly installed in your DOSBox environment.
- The game uses direct video memory (`B800h`) and keyboard port reads to handle character rendering and player movement inside a maze.
- All development was done with the constraints of the Intel 8088 architecture in mind.

## License

This project is open-source and available under the [MIT License](LICENSE).



