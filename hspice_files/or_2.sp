or_2

.lib "/tools/public/asiclib/umcoa/L65/process/UMK65FDKLLC00000OA_B11/Models/Hspice/l65ll_v181.lib" tt_ll_rvt12
.PARAM
.OPTION POST
.GLOBAL vss! vdd!

.model nm NMOS 
.model pm PMOS 

Mp1 x a vdd! vdd! pm W=320n L=60n 
Mp2 outx b x vdd! pm W=320n L=60n 
Mn1 outx a gnd! gnd! nm W=80n L=60n 
Mn2 outx b gnd! gnd! nm W=80n L=60n 
Mp3 out outx vdd! vdd! pm W=160n L=60n 
Mn3 out outx gnd! gnd! nm W=80n L=60n 
VVdd vdd! 0 1.2v
VGnd gnd! 0 0v
VA a gnd! pulse( 0 1.2 0 0.1n 0.1n 2n 4n)
VB b gnd! pulse( 0 1.2 0 0.1n 0.1n 4n 8n)
.tran 1n 20n

.END
