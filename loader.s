global loader			; entry symbol for ELF?

MAGIC_NUMBER equ 0x1BADB002 	; define constant
FLAGS	     equ 0x0	    	; multiboot flags
CHECKSUM     equ -MAGIC_NUMBER 	; MAGIC_NUMBER + CHECKSUM + FLAGS should equal 0

section .text:			; start of text/code sectionz
align 4
	dd MAGIC_NUMBER		;
	dd FLAGS		;
	dd CHECKSUM		; write the constants to machine code

loader:
	mov eax, 0xDEADBEEF	; place number 0XCAFEBABE in reg eax
	.loop:
	jmp .loop		; infinite loop
