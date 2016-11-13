   .org 0x0
   .set noat
   .global _start
_start:

    ######## and/andi ########

    ori  $1,$0,0x5555        # $1 = 0x5555
    ori  $2,$0,0x3333        # $2 = 0x3333
    and  $3,$2,$1            # $3 = 0x1111

    ori  $2,$0,0x0000        # $2 = 0x0000
    andi $2,$1,0x3333        # $2 = 0x1111

    ######## or/ori ########

    or   $3,$2,$1            # $3 = 0x5555
    ori  $4,$3,0x1111        # $4 = 0x5555

    ######## xor/xori ########

    xor  $1,$3,$2            # $1 = 0x4444
    xori $2,$3,0x1111        # $2 = 0x4444

    ######## nor ########

    ori  $1,$0,0x5555        # $1 = 0x5555
    ori  $2,$0,0x3333        # $2 = 0x3333
    nor  $3,$2,$1            # $3 = 0xffff8888
