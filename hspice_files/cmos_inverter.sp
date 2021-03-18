cmos_inverter

.lib "/tools/public/asiclib/umcoa/L65/process/UMK65FDKLLC00000OA_B11/Models/Hspice/l65ll_v181.lib" tt_ll_rvt12
.PARAM
.OPTION POST
.GLOBAL gnd! vdd!

.model nm NMOS 
.model pm PMOS 

M1 out in vdd! vdd! pm W=400n L=60n
M2 out in gnd! gnd! nm W=200n L=60n
VVdd vdd! 0 5v
VGnd gnd! 0 0v
VIn in gnd! pulse( 0 5 0 0.1n 0.1n 2n 4n)

.tran 1n 20n

.END
