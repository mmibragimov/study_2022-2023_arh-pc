%include 'in_out.asm'

section .data
msg_input_x db "Введите х: ",0h
msg_input_a db "Введите а: ",0h
msg_out_f db "f(x) = "

section .bss
x resb 10
a resb 10

section .text

global _start
_start:

mov eax, msg_input_x
call sprint
mov ecx, x
mov edx, 10
call sread
mov eax, x
call atoi
mov [x], eax

mov eax, msg_input_a
call sprint
mov ecx, a
mov edx, 10
call sread
mov eax, a
call atoi
mov [a], eax

mov eax, [x]
mov ebx, [a]
cmp eax, ebx
jle _sumax
mov edi, [a]
mov eax, msg_out_f
call sprint
mov eax, edi
call iprintLF
call quit

_sumax:
mov edi, [a]
add edi, [x]
mov eax, msg_out_f
call sprint
mov eax, edi
call iprintLF
call quit










