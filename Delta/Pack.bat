REM Before running, put compressed .prg from OneLoad64 and Exomizer.exe into directory.

REM Unpack compressed file and note: "Return to mem:"-address
unp64.exe "Delta.prg"

REM Pack file using "return to mem"-address, insert clear black screen and optimization parameters
exomizer sfx 0x1770 "Delta.prg.1770" -Di_irq_exit=1 -s "lda #$00 sta $d020 sta $d021 lsr $d011" -Di_perf=2 -n -M256 -o "delta_packed.prg"
