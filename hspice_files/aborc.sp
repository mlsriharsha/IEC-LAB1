aborc

.lib "/tools/public/asiclib/umcoa/L65/process/UMK65FDKLLC00000OA_B11/Models/Hspice/l65ll_v181.lib" tt_ll_rvt12
.PARAM
.OPTION POST
.GLOBAL gnd! vdd!

*.model nm n_12_llrvt 
*.model pm p_12_llrvt 

MP1 x a vdd! vdd! p_12_llrvt W=400n L=60n
MP2 x b vdd! vdd! p_12_llrvt W=400n L=60n
MP3 out c x vdd! p_12_llrvt W=400n L=60n
MN1 out a y gnd! n_12_llrvt W=200n L=60n
MN2 y b gnd! gnd! n_12_llrvt W=200n L=60n
MN3 out c gnd! gnd! n_12_llrvt W=100n L=60n
Vvdd vdd! 0 1.2v
Vgnd gnd! 0 0v
Va a gnd! pulse(0 1.2 0 0.1n 0.1n 2n 4n)
Vb b gnd! pulse(0 1.2 0 0.1n 0.1n 4n 8n)
Vc c gnd! pulse(1.2 0 0 0.1n 0.1n 2n 4n)
.tran 1n 10n

.END
