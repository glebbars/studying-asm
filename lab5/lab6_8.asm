; Лабораторна робота 4 «Системне програмування»
; Виконав Барський Гліб Ігорович Тр-з21 03.04.2023
; Арифметичні команди
; Обчислення формули z=(2*c-d+23)/(a/4-1)

Datas segment ;Сегмент даних
    c db 12
    d db 2
    a db 24
    z db ?
Datas ends

Codes segment
Assume cs:Codes, ds:Datas

First:
mov ax, Datas 
mov ds, ax 

;(a/4-1)
mov al, a
mov bl, 4
cbw
div bl
sub al, 1
mov z, al

;(2*c-d+23)
mov al, 2
mul c
sub al, d
add al, 23

;(2*c-d+23)/(a/4-1)
div z
mov z, al

; роздрукувати
mov dl, z
add dl, '0' 
mov ah, 02h
int 21h

mov ah, 4ch
int 21h

Codes ends
        end First