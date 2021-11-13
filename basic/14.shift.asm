%include "io64.inc"

section .text
global CMAIN
CMAIN:
    ;write your code here
    ;shl param1, param2 => param1 = param1 << param2
    ;param1 : 레지스터나 메모리, 작업할 장소
    ;param2 : 왼쪽으로 이동할 비트 수
    
    ;shr param1, param2 => param1 = param1 >> param2
    ;param1 : 레지스터나 메모리, 작업할 장소
    ;param2 : 오른쪽으로 이동할 비트 수

    ;param2는 주로 4의 배수로 사용
    ;이동시 밀려가는 숫자는 사라지고 빈 자리는 0으로 채워짐
    ;2byte 0x1234를 왼쪽으로 4bit 쉬프트 => 0x2340
    ;2byte 0x1234를 오른쪽으로 4bit 쉬프트 => 0x0123
    mov ax, [a]
    shl ax, 4
    PRINT_STRING msg_shl
    PRINT_HEX 2, ax
    NEWLINE
    
    mov ax, [a]
    shr ax, 4
    PRINT_STRING msg_shr
    PRINT_HEX 2, ax
    
    xor rax, rax
    ret
    
section .data
    msg_shl db "shift left 4bit : ", 0x00
    msg_shr db "shift right 4bit : ", 0x00
    a dw 0x1234