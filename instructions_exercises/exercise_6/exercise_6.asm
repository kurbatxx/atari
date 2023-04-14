;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; This exercise covers the increment and decrement instructions of the 6502. 
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

    processor 6502 
    seg Code        ; Define a new segment named "Code" 
    org $F000       ; Define the origin of the ROM code at memory address $F000 
Start: 
    ; TODO: 
                    ; Load the A register with the decimal value 1 
                    ; Load the X register with the decimal value 2 
                    ; Load the Y register with the decimal value 3 
                    ; Increment X 
                    ; Increment Y 
                    ; Increment A 
 
                    ; Decrement X 
                    ; Decrement Y 
                    ; Decrement A 
 
    org $FFFC       ; End the ROM always at position $FFFC 
    .word Start     ; Put 2 bytes with reset address at memory position $FFFC 
    .word Start     ; Put 2 bytes with break address at memory position $FFFE 
