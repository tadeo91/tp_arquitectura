#ejercio 2
#	.data 0x10001000
#palabra1: .word 0x10
#byte1: .byte 25
#espacio: .space 3
#palabra2: .word 0x15

#ejercicio 3
#	.data
#palabra1: .word 0x15
#palabra2: .word 56
#palabra3: .word 25
#bite1: .byte 0x10
#espacio: .space 3
#espacio2: .space 4
#bite20: .byte 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 0x10, 9, 8, 7, 6, 5, 4, 3, 2, 1

#ejercicio 3 alternativa
#	.data
#palabra1: .word 0
#palabra2: .word 0
#palabra3: .word 0
#bite1: .byte 0x10
#espacio1: .space 3
#espacio2: .space 4
#espacio_20bites: .space 20

#ejercicio 4
#cadena de caracteres "esto es un problema" usando asciiz, byte y word
#	.data
#cadena_ascii: .asciiz "Esto es un problema"
#cadena_byte: .byte 'E', 's', 't', 'o', ' ', 'e', 's', ' ', 'u', 'n', ' ', 'p', 'r', 'o', 'b', 'l', 'e', 'm', 'a'
#cadena_word: .word 'E', 's', 't', 'o' 
#	     .word ' ', 'e', 's', ' ' 
#	     .word 'u', 'n', ' ', 'p' 
#	     .word 'r', 'o', 'b', 'l'
#	     .word 'e', 'm', 'a', 0



