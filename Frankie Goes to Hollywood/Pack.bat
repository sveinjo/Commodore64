REM Before running, put compressed .prg from OneLoad64 and Exomizer.exe (2.0.11) into directory. 

REM Pack file insert clear black screen and optimization parameters
exomizer sfx 0x60AA "Frankie Goes to Hollywood.prg,0x0334,0x008D" -Di_table_addr=0x02 -Di_irq_exit=0 -f "w1: bit $d011 bpl w1 w2: bit $d011 bmi w2 jsr $fda3 rol $d011 lda #$35 sta $01 jsr $4230 lda #$37 sta $01 jsr $0334 dec $d030" -s "lda #$00 sta $d020 sta $d021 lsr $d011" -Di_perf=2 -n -M256 -o "frankie_packed.prg"