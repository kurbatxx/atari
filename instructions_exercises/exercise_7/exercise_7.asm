;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; This exercise covers the increment and decrement using zero-page 
; addressing mode. 
; The zero-page addressing mode helps us directly increment and decrement 
; values inside memory positions. 
; The “zero page” in the 6502 are addresses between 0 and 255. 
; These addresses are special for the 6502 processor because we can store 
; them using only 1 byte (8 bits), 
; which also means they can be performed relatively fast by the CPU. 
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

    processor 6502 
    seg Code        ; Define a new segment named "Code" 
    org $F000       ; Define the origin of the ROM code at memory address $F000 
 
Start:
    cld 
    lda #10         ; Load the A register with the decimal value 10 
    sta $80         ; Store the value from A into memory position $80 
     
    inc $80         ; Increment the value inside a (zero page) memory position $80 
    dec $80         ; Decrement the value inside a (zero page) memory position $80 

    jmp Start
 
    org $FFFC       ; End the ROM always at position $FFFC 
    .word Start     ; Put 2 bytes with reset address at memory position $FFFC 
    .word Start     ; Put 2 bytes with break address at memory position $FFFE 
