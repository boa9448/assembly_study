%include "io64.inc"

section .text
global CMAIN
CMAIN:
    ;write your code here
    xor rax, rax
    ret
    
    
;변수 선언
;section .bss는 초기화되지 않은 변수를 선언할 때 사용함
;변수이름 크기지시자 개수
;resb : 1byte, resw : 2byte, resd : 4byte, resq : 8byte
section .bss
    a resb 1    ;1byte크기 a변수 1개 선언
    b resw 2    ;2byte크기 b변수 2개 선언
    c resd 1    ;4byte크기 c변수 1개 선언
    d resq 3    ;8byte크기 d변수 3개 선언