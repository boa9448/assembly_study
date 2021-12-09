%include "io64.inc"

section .text
global CMAIN
CMAIN:
    ;write your code here
    ;mul param1(2byte) => dx:ax = ax * param1
    ;param1은 레지스터만 허용된다
    ;연산결과는 dx와 ax에 저장된다
    ;결과의 상위 값은 dx에 하위 값은 ax에 저장된다
    ;결과값을 4byte로 만들어야 한다면 다음과 같은 방법으로 진행한다
    ;shl dx, 16
    ;and eax, 0x0000ffff
    ;or eax, edx
    
    ;mul param1(4byte) => edx:eax = eax * param1
    ;param1은 레지스터만 허용된다
    ;연산결과는 edx와 eax에 저장된다
    ;결과의 상위 값은 edx에 하위 값은 eax에 저장된다
    ;결과값을 8byte로 만들어야 한다면 다음과 같은 방법으로 진행한다
    ;shl edx, 32
    ;and rax, 0x00000000ffffffff
    ;or rax, rdx
    mov ax, 0x1234
    mov bx, 0x1234
    mul bx
    shl edx, 16
    and eax, 0x0000ffff
    or eax, edx
    PRINT_STRING msg_2byte
    PRINT_HEX 4, eax
    NEWLINE
    
    mov eax, 0x12345678
    mov ebx, 0x12345678
    mul ebx
    
    shl rdx, 32
    and rax, 0x00000000ffffffff
    or rax, rdx
    PRINT_STRING msg_4byte
    PRINT_HEX 8, rax
    NEWLINE
    
    
    xor rax, rax
    ret
    
section .data
    msg_2byte db "2byte result : ", 0x00
    msg_4byte db "4byte result : ", 0x00    
    
    
    
    