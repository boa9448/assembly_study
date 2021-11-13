;조건
;1. 초기갑이 있는 메모리 변수 4개를 선언하고 크기는 1, 2, 4, 8byte로 하고
;값을 16진수로 초기화
;2. 초기값이 없는 메모리 변수 1, 2, 4, 8byte 크기를 각각 1개씩 선언하고
;조건 1에서 선언한 값을 복사
;3. 변수 8개를 모두 16진수로 출력 
%include "io64.inc"

section .text
global CMAIN
CMAIN:
    ;write your code here    
    xor rax, rax
    ret