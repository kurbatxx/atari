    processor 6502

    seg code
    org $F000           ; Define the code origin on $F000

Start:
    sei                 ; Disable interputs
    cld                 ; Disable the BCD decimal math mode
    ldx #$FF            ; Loads the X register with #$FF
    txs                 ; Transfer the X register to the Stack pointer

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; Clear the Page Zero region $00 to $FF
; Meaning the entire RAM and alse clear TIA registers
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
    lda #0              ; A = 0
    ldx #$FF            ; X = $FF
MemLoop:
    sta $0,X            ; Store the value of A inside memory address $0 + X
    dex                 ; X--
    bne MemLoop         ; Loop until X is equal to zero (z-flag is set)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; Fill the ROM size to exaсliy 4KB
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
    org $FFFC
    .word Start         ; Reset vector at $FFFC (where the program starts)
    .word Start         ; Interrupt vector at $FFFE (unused in the VCS)