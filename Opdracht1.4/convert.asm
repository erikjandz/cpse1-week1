//author is Erik de Zeeuw
.text
.align 2
.global convert
convert:
    push { lr } 
    cmp r0, #'@'     //check if c is lower than 64 which means it isnt a letter
    bls failed      //if so, function is done
    cmp r0, #'z'    //check if c is higher than 122 which means it isnt a letter
    bhi failed      //if so, function is done
    cmp r0, #'Z'     //if c is lower than 90, c is a letter
    bls succeeded   //go to convert part
    cmp r0, #'`'     //if c is higher than 96, c is a letter
    bhi succeeded   //go to convert part
    b failed        //function is done
succeeded:
    mov r1, #0x20     //place 0x20 in r1
    eor r0, r0, r1  //invert the 5th bit of c 
    b failed        //function is done
failed:
    pop { pc }