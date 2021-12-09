%include "io64.inc"

section .text
global CMAIN
CMAIN:
    ;write your code here
    ;sub param1, param2 => param1 -= param2
    ;param1 : 레지스터 또는 메모리에 있는 값
    ;param2 : 레지스터, 메모리 값
    ;param 1, 2가 모두 메모리인 경우에는 불가능함
    ;sub eax, 4 => 가능
    ;sub [a], [b] => 불가능
    mov ax, 0x12
    sub ax, 0x10
    PRINT_HEX 2, ax
    NEWLINE
    
    xor rax, rax
    ret