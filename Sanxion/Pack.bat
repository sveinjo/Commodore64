REM Before running, put compressed .prg from OneLoad64 and Exomizer.exe into directory.

REM Unpack compressed file and note: "Return to mem:"-address
unp64.exe "sanxion.prg"

REM Pack file using "return to mem"-address, insert clear black screen and optimization parameters
exomizer sfx 0x9670 "SANXION.PRG.9670" -Di_irq_exit=1 -s "lda #$00 sta $d020 sta $d021 lsr $d011" -Di_perf=2 -n -M256 -o "sanxion_packed.prg"
