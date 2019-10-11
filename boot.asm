
	org  07c00h			; Boot 状态, Bios 将把 Boot Sector 加 

LABEL_START:
	mov	dx, 0x0
	mov	cx, 0x2
	mov 	ax, 0x1000
	mov	es, ax
	mov 	bx, 0x200
	mov	ah, 0x2
	mov 	al, 0x1
	int 	0x13

	jmp	0x1020:0
times 	510-($-$$)	db	0	; 填充剩下的空间，使生成的二进制代码恰好为512字节
dw 	0xaa55				; 结束标志
