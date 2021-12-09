%include "io64.inc"

section .text
global CMAIN
CMAIN:
    ;write your code here
    ;div param1(2byte) => dx:ax = ax / param1
    ;param1은 레지스터만 허용된다
    ;연산결과는 dx와 ax에 저장된다
    ;몫은 ax, 나머지는 dx에 들어간다
    
    mov ax, 0x5678
    mov bx, 0x4567
    div bx
    
    PRINT_HEX 2, ax
    NEWLINE
    PRINT_HEX 2, dx
    NEWLINE    
    
    xor rax, rax
    ret
    
section .data
    msg_2byte db "2byte result : ", 0x00
    msg_4byte db "4byte result : ", 0x00    
    
    
    
    