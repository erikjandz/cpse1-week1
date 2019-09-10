.text
.align 2
.global print_asciz
print_asciz:
    push { r5, lr }     //push variable on the stack
    mov r5, r0          //use r5 for the argument
loop:
    ldrb r0, [ r5 ]     //load the value in the adress of r5 to r0 
    add r0, r0, #0      //a flag goes on if r0 is 0, else it stays off
    beq done            //if r0 is zero, go to done
    bl uart_put_char    //go to uart_put_char and come back
    add r5, r5, #1      //r5 ++
    b loop              //go to loop
done:
    pop { r5, pc }      //pop variable from the stack