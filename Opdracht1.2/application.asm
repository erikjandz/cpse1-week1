.text
.align 2

str: .asciz "hello world"   //=str string has hello world

.global application         
application:    
    ldr r0, =str            //load hello world in r0
    bl print_asciz          //go to print_asciz