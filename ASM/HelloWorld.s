# hello world ASM

.data

HelloWorldString:
    .ascii "Hello World\n"

.text

.globl _start

_start:
        #cargar argumentos para funcion write
        movl $4, %eax
        movl $1, %ebx
        movl $HelloWorldString, %ecx
        movl $12, %edx
        int $0x80
        
        #salir de programa
        
        movl $1, %eax
        movl $0, %ebx
        int $0x80   
