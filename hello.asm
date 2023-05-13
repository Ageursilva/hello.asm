section .data
    message db 'Olá,mundo', 0

section .text
    global _start

_start:
    ; Escrever a mensagem na saída padrão
    mov eax, 4                   ; Número da chamada do sistema para escrever
    mov ebx, 1                   ; Descritor de arquivo para a saída padrão
    mov ecx, message             ; Endereço da mensagem
    mov edx, 13                  ; Tamanho da mensagem
    int 0x80                     ; Interrupção do sistema

    ; Sair do programa
    mov eax, 1                   ; Número da chamada do sistema para sair
    xor ebx, ebx                 ; Código de saída 0
    int 0x80                     ; Interrupção do sistema