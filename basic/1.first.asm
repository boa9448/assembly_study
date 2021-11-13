%include "io64.inc"

section .text
global CMAIN
CMAIN:
    ;write your code here
    mov eax, 10
    PRINT_DEC 1, eax
    
    xor rax, rax
    ret