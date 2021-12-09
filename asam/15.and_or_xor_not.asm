%include "io64.inc"

section .text
global CMAIN
CMAIN:
    ;write your code here
    ;and param1, param2 => param1 = param1 & param2
    ;param1, param2 : 레지스터, 메모리, 상수 모두 가능
    ;param1, param2가 둘 다 메모리일 경우엔 불가능
    
    ;or param1, param2 => param1 = param1 | param2
    ;param1, param2 : 레지스터, 메모리, 상수 모두 가능    
    ;param1, param2가 둘 다 메모리일 경우엔 불가능
            
    ;xor param1, param2 => param1 = param1 ^ param2
    ;param1, param2 : 레지스터, 메모리, 상수 모두 가능    
    ;param1, param2가 둘 다 메모리일 경우엔 불가능
    
    ;not param1 => param1 = !param1
    
    mov al, 0b10110110
    mov bl, 0b01010101
    PRINT_HEX 1, al
    NEWLINE
    PRINT_HEX 1, bl
    NEWLINE
    
    and al, bl
    PRINT_HEX 1, al
    NEWLINE
    
    mov al, 0b10110110
    mov bl, 0b01010101
    or al, bl
    PRINT_HEX 1, al
    NEWLINE
    
    mov al, 0b10110110
    mov bl, 0b01010101
    xor al, bl
    PRINT_HEX 1, al
    NEWLINE
    
    mov al, 0b10110110
    not al
    PRINT_HEX 1, al
    NEWLINE
    
    
    xor rax, rax
    ret