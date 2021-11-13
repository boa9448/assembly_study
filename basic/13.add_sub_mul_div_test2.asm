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
    GET_HEX 1, input_a
    GET_HEX 1, input_b
    
    mov al, [input_a]
    mov [add_result], al
    mov al, [input_b]
    add [add_result], al
    
    mov al, [input_a]
    mov [sub_result], al
    mov al, [input_b]
    sub [sub_result], al
    
    mov al, [input_a]
    mov bl, [input_b]
    mul bl
    mov [mul_result], ax
    
    mov al, [input_a]
    mov bl, [input_b]
    div bl
    mov [div_result1], al
    mov bl, ah
    mov [div_result2], bl
    
    PRINT_DEC 1, add_result
    NEWLINE
    PRINT_DEC 1, sub_result
    NEWLINE
    PRINT_DEC 2, mul_result
    NEWLINE
    PRINT_DEC 1, div_result1
    NEWLINE
    PRINT_DEC 1, div_result2
    NEWLINE
    
    xor rax, rax
    ret
    
section .bss
    input_a resb 1
    input_b resb 1
    add_result resb 1
    sub_result resb 1
    div_result1 resb 1
    div_result2 resb 1
    mul_result resb 1