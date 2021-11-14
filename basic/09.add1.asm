%include "io64.inc"

section .text
global CMAIN
CMAIN:
    ;write your code here
    ;add param1, param2
    ;param1 : 레지스터 또는 메모리에 있는 값
    ;param2 : 레지스터, 메모리 값
    ;param 1, 2가 모두 메모리인 경우에는 불가능함
    ;add eax, 4 => 가능
    ;add [a], [b] => 불가능
    
    mov ax, 0x5
    add ax, 0x10
    
    PRINT_HEX 2, ax
    NEWLINE
    
    xor rax, rax
    ret