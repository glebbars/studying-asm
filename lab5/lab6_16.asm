; Лабораторна робота 4 «Системне програмування»
; Виконав Барський Гліб Ігорович Тр-з21 03.04.2023
; Арифметичні команди
; Обчислення формули z=(2*c-d+23)/(a/4-1)

Datas segment ;Сегмент даних
    c dw 4
    d dw 1
    a dw 28
    z dw ?
Datas ends

Codes segment
Assume cs:Codes, ds:Datas

First:
mov ax, Datas 
mov ds, ax 

;(a/4-1) = 4
mov ax, a
mov bx, 4
cwd
div bx
sub ax, 1
mov z, ax

;(2*c-d+23) = 12-3+23 = 32 
mov ax, 2
mul c
sub ax, d
add ax, 23

;(2*c-d+23)/(a/4-1)
div z
mov z, ax

; роздрукувати
mov dx, z
add dx, '0' 
mov ah, 02h
int 21h

mov ah, 4ch
int 21h

Codes ends
        end First