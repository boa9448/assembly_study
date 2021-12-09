%include "io64.inc"

section .text
global CMAIN
CMAIN:
    ;write your code here
    ;GET_DEC 크기, 주소[또는 레지스터]
    ;GET_HEX 크기, 주소[또는 레지스터]
    GET_DEC 1, a
    PRINT_DEC 1, a
    NEWLINE
    
    GET_HEX 2, ax
    PRINT_HEX 2, ax
    
    xor rax, rax
    ret

section .bss
    a resb 1