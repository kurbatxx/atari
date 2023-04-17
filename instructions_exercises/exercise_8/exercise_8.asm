;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; Your goal here is to create a loop that counts down from 10 to 0. 
; You should also fill the memory addresses from $80 to $8A with values 
; from 0 to A.
;
; +-----+-----+-----+-----+-----+-----+-----+-----+-----+-----+-----+
; | $80 | $81 | $82 | $83 | $84 | $85 | $86 | $87 | $88 | $89 | $8A | 
; +-----+-----+-----+-----+-----+-----+-----+-----+-----+-----+-----+
; |  0  |  1  |  2  |  3  |  4  |  5  |  6  |  7  |  8  |  9  |  A  |
; +-----+-----+-----+-----+-----+-----+-----+-----+-----+-----+-----+
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

    processor 6502 
    seg Code        ; Define a new segment named "Code" 
    org $F000       ; Define the origin of the ROM code at memory address $F000 
 
Start: 
    ldy #10         ; Initialize the Y register with the decimal value 10 
 
Loop: 
    tya             ; Transfer Y to A 
    sta $80,Y       ; Store the value in A inside memory position $80+Y 
    dey             ; Decrement Y 
    bpl Loop        ; Branch if plus (only if result of last instruction was positive) 
 
    org $FFFC       ; End the ROM always at position $FFFC 
    .word Start     ; Put 2 bytes with reset address at memory position $FFFC 
    .word Start     ; Put 2 bytes with break address at memory position $FFFE 
