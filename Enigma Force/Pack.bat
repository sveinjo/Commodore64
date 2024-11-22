REM Before running, put compressed .prg from OneLoad64 and Exomizer.exe into directory.

REM Unpack compressed file and note: "Return to mem:"-address
unp64.exe "Enigma Force.prg"

REM Pack file using "return to mem"-address, insert clear black screen and optimization parameters
exomizer sfx 0x0400 "Enigma Force.prg.0400" -Di_table_addr=0x02 -Di_irq_exit=1 -s "lda #$00 sta $d020 sta $d021 lsr $d011" -Di_perf=2 -n -M256 -o "enigmaforce_packed.prg"

REM Link packed program-file (.prg) with title-screen (.koa)
koalalink.exe enigmaforce_packed.prg enigmaforce.koa enigmaforce_pic.prg
