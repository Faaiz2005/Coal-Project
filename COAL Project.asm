INCLUDE Irvine32.inc
.data
menu BYTE "=====MENU DRIVEN CALCULATOR=====",0Dh,0Ah,
"1.Addition",0Dh,0Ah,
"2.Subtraction",0Dh,0Ah,
"3.Multiplication",0Dh,0Ah,
"4.Division",0Dh,0Ah,
"5.Factorial",0Dh,0Ah,
"6.String Length",0Dh,0Ah,
"0.Exit",0Dh,0Ah,
"Enter choice:",0
msgNum1 BYTE "Enter first number:",0
msgNum2 BYTE "Enter second number:",0
msgNum BYTE "Enter number:",0
msgStr BYTE "Enter string:",0
msgRes BYTE "Result=",0
msgInv BYTE "Invalid Choice!",0Dh,0Ah,0
strstore BYTE 100 DUP(0)
num1 DWORD ?
num2 DWORD ?
.code
AddProc PROC
    mov eax,num1
    add eax,num2
    ret
AddProc ENDP
SubProc PROC
    mov eax,num1
    sub eax,num2
    ret
SubProc ENDP
MulProc PROC
    mov eax,num1
    mul num2
    ret
MulProc ENDP
DivProc PROC
    mov eax,num1
    mov edx,0
    mov ebx,num2
    div ebx
    ret
DivProc ENDP
FactProc PROC
    mov ecx,num1
    mov eax,1
    cmp ecx,0
    je FDone
FLoop:
    mul ecx
    dec ecx
    jnz FLoop
FDone:
    ret
FactProc ENDP
StrLenProc PROC
    mov edx,OFFSET buffer
    call StrLength
    ret
StrLenProc ENDP
main PROC
MENU_START:
    mov edx,OFFSET menu
    call WriteString
    call ReadInt
    cmp eax,0
    je EXIT_PROGRAM
    cmp eax,1
    je DO_ADD
    cmp eax,2
    je DO_SUB
    cmp eax,3
    je DO_MUL
    cmp eax,4
    je DO_DIV
    cmp eax,5
    je DO_FACT
    cmp eax,6
    je DO_STRLEN
    mov edx,OFFSET msgInv
    call WriteString
    jmp MENU_START
DO_ADD:
    call InputTwoNumbers
    call AddProc
    jmp SHOW_RESULT
DO_SUB:
    call InputTwoNumbers
    call SubProc
    jmp SHOW_RESULT
DO_MUL:
    call InputTwoNumbers
    call MulProc
    jmp SHOW_RESULT
DO_DIV:
    call InputTwoNumbers
    call DivProc
    jmp SHOW_RESULT
DO_FACT:
    mov edx,OFFSET msgNum
    call WriteString
    call ReadInt
    mov num1,eax
    call FactProc
    jmp SHOW_RESULT
DO_STRLEN:
    mov edx,OFFSET msgStr
    call WriteString
    mov edx,OFFSET strstore
    mov ecx,100
    call ReadString
    call StrLenProc
    jmp SHOW_RESULT
SHOW_RESULT:
    mov edx,OFFSET msgRes
    call WriteString
    call WriteInt
    call Crlf
    jmp MENU_START
EXIT_PROGRAM:
    exit
main ENDP
InputTwoNumbers PROC
    mov edx,OFFSET msgNum1
    call WriteString
    call ReadInt
    mov num1,eax
    mov edx,OFFSET msgNum2
    call WriteString
    call ReadInt
    mov num2,eax
    ret
InputTwoNumbers ENDP
END main