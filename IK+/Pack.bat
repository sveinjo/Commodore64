REM Before running, put compressed .prg from OneLoad64 and Exomizer.exe into directory.

REM Unpack compressed file and note: "Return to mem:"-address
unp64.exe "ik+.prg"

REM Pack file using "return to mem"-address, insert clear black screen and optimization parameters
exomizer sfx 0x07B0 "ik+.prg.0800" -s "lda #$00 sta $d020 sta $d021 lsr $d011" -Di_perf=2 -Di_irq_exit=0 -n -M256 -o "ik+_packed.prg"

REM Link packed program-file (.prg) with title-screen (.koa)
koalalink.exe ik+_packed.prg ik+.koa ik+_pic.prg
