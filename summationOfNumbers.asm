DATA SEGMENT  ;we will define our datas here
    number1 db 23H
    number2 db 03H
    sumNum dw 00H
    mulNum dw 00H
    divNum dw 00H
    subNum dw 00H
DATA ENDS 

CODE SEGMENT
    ASSUME CS:CODE, DS:DATA ; i took this from web
START:   
    mov ax,DATA
    mov ds,ax ;i defined data segment
    
    xor ax,ax ;cleared ax
    
    mov al,number1
    mov bl,number2
    
    add al,bl
    mov sumNum,ax ;addition process has done
    
    
    xor ax,ax 
    
    mov al,number1
    ;bl is already defined
    
    mul bl
      
    mov mulNum,ax
    
    
    xor ax,ax
    
    mov al,number1
    
    div bl
    
    mov divNum,ax
    
    
    xor ax,ax
    
    mov al,number1
    
    sub al,bl
    
    mov subNum,ax
    
    INT 21H
CODE ENDS


END START




