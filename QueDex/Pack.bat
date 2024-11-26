REM Before running, put compressed .prg from OneLoad64 and Exomizer.exe into directory.

REM Unpack compressed file and note: "Return to mem:"-address
unp64.exe "Quedex.prg"

REM Pack file using "return to mem"-address, insert clear black screen and optimization parameters
exomizer sfx 0x1770 "Quedex.prg.1770" -s "lda #$00 sta $d020 sta $d021 lsr $d011" -Di_perf=2 -Di_irq_exit=1 -n -M256 -o "quedex_packed.prg"
