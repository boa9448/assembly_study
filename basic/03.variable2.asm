%include "io64.inc"

section .text
global CMAIN
CMAIN:
    ;write your code here
    PRINT_HEX 2, b
    
    xor rax, rax
    ret
    
;변수 선언
;section .data는 초기화된 변수를 선언할 때 사용함
;변수이름 크기지시자 초기값
; db : 1byte, dw : 2byte, dd : 4byte, dq : 8byte
section .data
    a db 0x12               ;1byte크기 a변수 선언
    b dw 0x1234             ;2byte크기 b변수 선언
    c dd 0x12345678         ;4byte크기 c변수 선언
    d dq 0x123456789abcdef  ;8byte크기 d변수 선언