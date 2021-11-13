%include "io64.inc"

section .text
global CMAIN
CMAIN:
    ;write your code here
    ;1. 사용자로부터 2개의 변수를 1byte단위로 입력받아서 메모리에 저장
    ;2. 입력 받은 값을 사칙연산(+, -, *, /)한 값을 1byte 단위의 메모리에
    ;   개별적으로 저장
    ;3. 나누기의 경우는 몫과 값을 각각 나누어서 저장
    ;4. 곱하기의 경우는 계산결과를 2byte 변수로 선언하고 사용
    ;5. 저장된 메모리의 값을 모두 출력
    xor rax, rax
    ret