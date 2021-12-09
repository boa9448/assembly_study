%include "io64.inc"

section .text
global CMAIN
CMAIN:
    ;write your code here    
    ;TEST param1, param2 => flag register change
    ;param1과 param2의 and 연산을 수행하고 결과를 플래그 레지스터에 반영함
    ;AND 연산과 다르게 결과를 param1에 반영하지 않음
    
    mov ax, 0x1234
    mov bx, 0x0000
    
    xor rax, rax
    ret