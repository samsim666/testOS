
text:
	mov 	ax,0x1020
	mov  	es,ax
	mov	ah,0x3
	xor 	bh,bh
	int	0x10
	mov 	bx,0xa
	mov	ax,0x1301
	mov	cx,0x2
	mov	bp,msg
	int 	0x10

	jmp 	$

msg:
	db	"ok"
