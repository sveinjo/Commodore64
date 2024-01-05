REM Before running, put compressed .prg ("Sacred Armour of Antiriad, The.prg") from OneLoad64 and Exomizer.exe into directory.

REM Unpack compressed file and note: "Return to mem:"-address
unp64.exe "Sacred Armour of Antiriad, The.prg"

REM Pack file using "return to mem"-address, insert clear black screen and optimization parameters
exomizer.exe sfx 0x8009 "Sacred Armour of Antiriad, The.prg.8009" -s "lda #$00 sta $d020 sta $d021 lsr $d011" -Di_perf=2 -Di_irq_exit=0 -n -M256 -o "antiriad_packed.prg"

REM Link packed program-file (.prg) with title-screen (.koa)
koalalink.exe antiriad_packed.prg antiriad.koa antiriad.prg



