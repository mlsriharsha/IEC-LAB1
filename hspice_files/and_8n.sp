and_8n

.lib "/tools/public/asiclib/umcoa/L65/process/UMK65FDKLLC00000OA_B11/Models/Hspice/l65ll_v181.lib" tt_ll_rvt12
.PARAM
.OPTION POST
.GLOBAL vss! vdd!

.model nm NMOS 
.model pm PMOS

Mp1 outx a vdd! vdd! pm W=1600n L=60n f=4
Mp2 outx b vdd! vdd! pm W=1600n L=60n f=4
Mn1 outx a x gnd! nm W=1600n L=60n f=8
Mn2 x b gnd! gnd! nm W=1600n L=60n f=8
Mp3 out outx vdd! vdd! pm W=1600n L=60n f=4
Mn3 out outx gnd! gnd! nm W=800n L=60n f=4
Mp4 out1 out vdd! vdd! nm W=1600n L=60n f=4
Mn4 out1 out gnd! gnd! nm W=800n L=60n f=4
VVdd vdd! 0 1.2v
VGnd gnd! 0 0v
VA a gnd! pulse( 0 1.2 0 0.2n 0.1n 2n 4n)
VB b gnd! pulse( 0 1.2 0 0.1n 0.2n 3n 8n)
.tran 1n 20n

.END
