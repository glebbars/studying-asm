; Лабораторна робота 3. «Системне програмування» ; Виконав: Барський Гліб Ігорович., гр. ТР-з21, дата: 30.03.2023
; Команди пересилання
; Заповнення поля String умістом Simvol
Datas segment
     Simvol db "assembler" 
     String db "abrselsem $"
     Strend db "$"
     ;0Dh – символ повернення каретки
     ;0Ah - символ переведення рядка
     CR_LF db 0dh,0ah, '$'
Datas ends
Codes segment
Assume cs:Codes,ds:Datas
First:
     mov ax, Datas
     mov ds, ax
     mov ah, 40h          ; Підготовка  і
     mov bx, 1            ; виведення
     mov cx, 9            ; вихідного рядка String
     lea dx, String       ; засобами DOS
     int 21h
     mov ah, 9h           ; Виведення на екран
     mov dx, offset CR_LF ; переведення курсора на
     int 21h              ; наступний рядок
     mov al, Simvol+1     ; Розміщення символу s
     mov String+1, al     ; у позиції 
     mov String+2, al     ; рядка 
     mov al, Simvol+3     ; Розміщення символу e
     mov String+3, al     ; у позиції рядка 
     mov al, Simvol+4     ; Розміщення символу m
     mov String+4, al     ; у позиції рядка
     mov al, Simvol+5     ; Розміщення символу b
     mov String+5, al     ; у позиції рядка
     mov al, Simvol+6     ; Розміщення символу l
     mov String+6, al     ; у позиції рядка
     mov al, Simvol+8     ; Розміщення символу r
     mov String+8, al     ; у позиції рядка
     mov ah, 40h          ; Підготовка
     mov bx, 1            ; і виведення
     mov cx, 9            ; результуючого рядка
     lea dx, String       ; засобами DOS
     int 21h
     mov ah, 4ch          ; Повернення
     int   21h            ; у середовище DOS
Codes ends
     end First                                