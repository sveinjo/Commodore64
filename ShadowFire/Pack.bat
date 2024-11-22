REM Before running, put compressed .prg from OneLoad64 and Exomizer.exe into directory.

REM Unpack compressed file and note: "Return to mem:"-address
unp64.exe "Shadowfire.prg"

REM Pack file using "return to mem"-address, insert clear black screen and optimization parameters
exomizer sfx 0x081B "Shadowfire.prg.081b" -Di_irq_exit=1 -s "lda #$00 sta $d020 sta $d021 lsr $d011" -Di_perf=2 -n -M256 -o "shadowfire_packed.prg"

REM Link packed program-file (.prg) with title-screen (.koa)
koalalink.exe shadowfire_packed.prg shadowfire.koa shadowfire_pic.prg
