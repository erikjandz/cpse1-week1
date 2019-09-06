.text
.align 2
.global convert
convert:
    push { lr }
    cmp r0, #64
    bls failed
    cmp r0, #122
    bhi failed
    cmp r0, #90
    bls succeeded
    cmp r0, #96
    bhi succeeded
    b failed
succeeded:
    mov r1, #32
    eor r0, r0, r1
    b failed
failed:
    pop { pc }