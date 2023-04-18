    processor 6502
    
    include "vcs.h"
    include "macro.h"

    seg code
    org $F000               ; define origin of ROM

START:
    CLEAN_START             ; macro to safety clean RAM

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; Set background lyminocity color to yellow
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

    lda #$1E                ; load to accum NTSC yellow 
    sta COLUBK              ; store A to background color addres $09

    jmp START               ; repeat

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; Fill ROM size to exacttly 4KB
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

    org $FFFC      ; Defines origin to $FFFC
    .word START    ; Reset vector at $FFFC (where program starts)
    .word START    ; Interrupt vector at $FFFE (unused by the VCS)
    

