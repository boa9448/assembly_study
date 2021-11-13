%include "io64.inc"

section .text
global CMAIN
CMAIN:
    ;write your code here
    ;mul param1(1byte)
    ;param1 : 레지스터만 허용
    ;곱해지는 값은 꼭 al레지스터에 넣어야함
    ;연산결과는 무조건 ax레지스터로만 리턴됨
    ;3*2를 계산하는 방법
    mov ax, word 0x0
    mov al, byte 0x3
    mov bl, byte 0x2
    mul bl
    PRINT_HEX 2, ax
    NEWLINE
    
    xor rax, rax
    ret