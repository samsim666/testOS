
boot.bin:boot.asm
	@nasm -o boot.bin boot.asm

loader.bin:loader.asm
	@nasm -o loader.bin loader.asm

bootimg:boot.bin loader.bin
	@dd if=boot.bin of=bootimg bs=512 count=1
	@dd if=loader.bin of=bootimg bs=512 count=1 seek=1

clean:
	@rm -f bootimg boot.bin loader.bin *~
