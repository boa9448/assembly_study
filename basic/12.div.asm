%include "io64.inc"

section .text
global CMAIN
CMAIN:
    ;write your code here
    ;div param1(1byte)
    ;param1 : 레지스터만 허용
    ;나누어지는 값(피제수)은 꼭 ax레지스터에 넣어야함
    ;연산결과는 무조건 al(몫), ah(나머지)레지스터로만 리턴됨
    ;7/3을 계산하는 방법
    mov ax, word 0x7
    mov bl, byte 0x3
    div bl
    PRINT_STRING msg1
    PRINT_HEX 1, al
    NEWLINE
    
    mov bl, ah
    PRINT_STRING msg2
    PRINT_HEX 1, bl
    NEWLINE
    
    xor rax, rax
    ret
    
section .data
    msg1 db "val : ", 0x00
    msg2 db "remainder : ", 0x00