#ejemplo 1
#	.text
#main: lui $s0, 0x8690 #lui es una instruccion de carga inmediata
#en la memoria de instruccion se almace la etiqueta main (antes de su ejeuccion)
#luego de ejecutra lui, se almacena un half word (0x8690) en el registro $s0


#ejemplo 2
#	.text
#main: li $s0, 0x12345678 #li autoejecuta la instruccion ori
#ademas divide en la memoria de isntrucciones li en la direccion x defecto y ori en la siguietne columna de 4 bytes


#ejemplo 3
#	.data #en data tenemos la constante, el valor en un segmento de memoria
#number: .word 0x12345678
#	.text #en text teneos la instruccion que ocupa 2 columnas de memoria xq es una pseudoinstruccion
#main: la $s0, number #cuando se ejecute el programa, la direccion de la etiqueta number guardado en data
#se moverá al registro $s0, la etiqueta number hace referencia al lugar en .data


#ejemplo 4
#	.data
#number: .word 0x12345678 #etiqueta number guarda el dato 0x en memoria
#	.text
#main: la $t0, number #con la etiqueta number hacemos referencia a la direccion de memoria
#      lw $s0, 0($t0) #en s0 cargamos el dato almacenado en la direccion que llamamos con la etiqueta number

#ejemplo 5
#	.data
#number: .word 0x12345678
#	.text
#main: lw $s0, number($0)

#ejemplo 6
#	.data
#number: .word 0x12345678
#	.text
#main: lw $s0, number #entiendo que lo que sucede aca es que carga directamente la etiqueta en el registro $s0
#esto solamente aplica cuando la memria que estamos usando es estática, o sea, no cambiamos el valor de la misma

#ejercicio parte 1.2 pag3
#modificar el prog para que guarde los bytes de mayor peso de number
#	.data
#number: .word 0x12345678
#	.text
#main: lh $s0, number+2 #sumando dos a la etiquita number movemos la direccion de memoria
#con lh cargamos half-word de la palabra number, quedandonos con la parte de mayor peso

#ejemplo 7
#	.data
#number: .word 0x12345678 #en este ejemplo se produce un error al ejecutar el programa
#	.text		#El error se debe a que lh desplaza memoria en multiplos de 4 por lo tanto
#main: lh $s0, number+1  #sumar +1 produce un error de alineacion

#ejemplo 8 (ver mas en profundidad pag4)
#	.data
#number: .word 0x12345678
#	.text
#main: lb $s0, number+0


#ejemplo 9
#	.data
#number: .word 0x10203040
#place: .space 4
#other: .word 0xffffffff
#	.text
#main: lw $s0, number #carga el word number en el registro s0
#      sw $s0, place  #usa lo guardado en r s0 y lo guarda en la direccion data segment 10010004 space
#      sw $s0, other  #uso lo guardado en r s0 y lo guarda en la direccion data segment 1001008 other

#ejercicio ejemplo pag4
	.data
number: .word 0x10203040
place: .space 4
#other: .word 0xfffffff
	.text
main: lh $s0, number
      sb $s0, place
      
      

