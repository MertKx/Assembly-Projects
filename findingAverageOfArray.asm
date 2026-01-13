DATA SEGMENT 
    Number  DB 21, 42, 5, 17, 8, 9, 51, 12, 32, 3 
    length  db 0Ah
    average db 00h
    sum     dw 0000h
    bigger  db 00h
DATA ENDS 

CODE SEGMENT 
    ASSUME CS:CODE, DS:DATA
START: 
    MOV AX, DATA
    MOV DS, AX
    

    MOV CL, length     
    MOV CH, 00h
    MOV SI, OFFSET Number 

FIND_SUM:            
    MOV AL, [SI]
    MOV AH, 00h          
    ADD sum, AX
    INC SI
    LOOP FIND_SUM       


    MOV AX, sum
    DIV length ;div ax(sum) /length       
    MOV average, AL

   
    MOV CL, length      
    MOV CH, 00h
    MOV SI, OFFSET Number

FIND_GREATER:
    MOV AL, [SI]
    CMP AL, average    
    JBE NEXT_ITER       
    
    INC bigger        

NEXT_ITER:
    INC SI
    LOOP FIND_GREATER   

   
    MOV AH, 4Ch
    INT 21h
CODE ENDS
END START