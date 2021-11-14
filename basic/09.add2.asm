%include "io64.inc"

section .text
global CMAIN
CMAIN:
    ;write your code here
    
    ;레지스터 + 메모리
    mov ax, 0x12
    mov [a], word 0x12 
    add ax, [a]
    PRINT_HEX 2, a
    NEWLINE
    
    ;메모리 + 레지스터
    mov ax, 0x34
    mov [a], word 0x34
    add [a], ax
    PRINT_HEX 2, a
    NEWLINE
    
    ;메모리 + 메모리 => 에러
    mov [a], word 0x11
    mov [b], word 0x11
    ;add [a], [b] ;해당 라인의 주석을 제거하면 에러가 발생함
    PRINT_HEX 2, a
    NEWLINE
    
    xor rax, rax
    ret
    
section .bss
    a resw 1
    b resw 1