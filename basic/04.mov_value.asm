%include "io64.inc"

section .text
global CMAIN
CMAIN:
    ;write your code here
    mov al, [a]         ;1byte a의 값을 al 레지스터에 복사
    mov eax, a          ;a의 주소값을 eax 레지스터에 복사
    mov [a], 0x34       ;1byte값을 a에 복사(크기를 지정하지 않아서 에러)
    mov [a], byte 0x34  ;1byte값을 a에 복사
    
    xor rax, rax
    ret
    
section .data
    a db 0x12