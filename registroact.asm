#.text
#main: lui $s0, 0x8690 #despues de la como guarda un valor en el registro $s, mediante la instruccion lui

#.text
#main: li $s0, 0x12345678 #divide la constante de 32 bits en dos registros y completa con 00
#seudo instruccion li

#.data
#number: .word 25
#.text
#main: la $s0, number #es como un pointer, lee la direccion de memoria de la etiqueta en la que se guarda lo almacenado en la etiqueta
# hasta aca vimos carga de memoria de manera inmediata

.data
number: .word 0x12345678
.text
main: la $t0, number 
      lw $s0, 0($t0) #es como un place holder el 0($t0)


