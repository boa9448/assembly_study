%include "io64.inc"

section .text
global CMAIN
CMAIN:
    ;write your code here
    ;PRINT_STRING param
    ;param : 출력할 곳의 주소
    ;문자열의 종료는 0x00으로 마무리해야한다
    PRINT_STRING a
    
    xor rax, rax
    ret
    
section .data
    a db "hello world!", 0x00
    