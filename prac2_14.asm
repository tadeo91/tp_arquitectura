#ejercicio 1 pag4
#	.data 0x10000000
#vector0: .word 10
#vector1: .word 20
#vector2: .word 25
#vector3: .word 500
#vector4: .word 3
#	.text
#main: lw $s0, vector0
#     lw $s1, vector1
#      lw $s2, vector2
#      lw $s3, vector3
#      lw $s4, vector4     
#      sw $s0, 0x10010000
#      sw $s1, 0x10010004
#      sw $s2, 0x10010008
#      sw $s3, 0x1001000C
#      sw $s4, 0x10010010

	.data
palabra: .word 0x10203040
