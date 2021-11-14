%include "io64.inc"

section .text
global CMAIN
CMAIN:
    ;write your code here
    mov al, [a]     ;1byte a 변수에 있는 값을 al레지스터에 복사
    mov [b], al     ;al레지스터에 있는 값을 1byte b변수에 복사
    
    PRINT_HEX 1, al ;HEX형식으로 1byte값 al을 출력
    NEWLINE         ;줄넘김
    
    PRINT_HEX 1, b  ;HEX형식으로 1byte b변수에 들어있는 값을 출력
    NEWLINE         ;줄넘김
    
    xor rax, rax
    ret
    
section .data
    a db 0x12
    
section .bss
    b resb 1
