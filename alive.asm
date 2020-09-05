;alive.asm
section .data
	msg1	db	"Hello,  world!",10,0 	   ; string w/ NL and null terminator
	msg1Len	equ	$-msg1-1	           ; measure len minus null terminator
	msg2	db	"Alive and kicking",10,0   ; string w/ NL and null term
	msg2Len	equ	$-msg2-1		   ; measure len minus null terminator
	radius	dq	357			   ; no string,  not displayable?
	pi	dq	3.14			   ; no string,  not displayable?
section .bss
section .text
	global main
main:
	push	rbp		; function prolog
	mov	rbp, rsp	; function prolog
	mov	rax, 1		; 1 = write
	mov	rdi, 1		; 1 = stdout
	mov	rsi, msg1
	mov	rdx, msg1Len
	syscall
	mov	rax, 1		; setup syscall write stdout
	mov	rdi, 1
	mov	rsi, msg2	; msg to write and len
	mov	rdx, msg2Len
	syscall
	mov	rsp, rbp	; function epilog
	pop	rbp 		; function epilog
	mov	rax, 60		; exit
	mov	rdi, 0		; success rval
	syscall
	
