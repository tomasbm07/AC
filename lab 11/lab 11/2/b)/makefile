main.exe: bin_img_asm.s main.c
	gcc -o main.exe main.c bin_img_asm.s

debug: bin_img_asm.s main.c
	gcc -g -ggdb -o main.exe main.c bin_img_asm.s