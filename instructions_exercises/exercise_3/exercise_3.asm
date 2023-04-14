;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; This exercise is about transferring values from registers to other registers. 
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

    processor 6502 
    seg Code        ; Define a new segment named "Code" 
    org $F000       ; Define the origin of the ROM code at memory address $F000 
Start: 
    ; TODO: 
                    ; Load the A register with the literal decimal value 15 
                    ; Transfer the value from A to X 
                    ; Transfer the value from A to Y 
                    ; Transfer the value from X to A 
                    ; Transfer the value from Y to A 
     
                    ; Load X with the decimal value 6 
                    ; Transfer the value from X to Y 
 
    org $FFFC      ; End the ROM by adding required values to memory position $FFFC 
    .word Start    ; Put 2 bytes with the reset address at memory position $FFFC 
    .word Start    ; Put 2 bytes with the break address at memory position $FFFE 
