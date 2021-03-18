srlatch_N
 
.lib "/tools/public/asiclib/umcoa/L65/process/UMK65FDKLLC00000OA_B11/Models/Hspice/l65ll_v181.lib" tt_ll_rvt12
.PARAM
.OPTION POST
.GLOBAL vss! vdd!
 
.model nm NMOS  
.model pm PMOS  
 
Mp1 p1 s vdd! vdd! pm W=400n L=60n f=1
Mp2 qa qb p1 vdd! pm W=400n L=60n f=1
Mn1 qa s gnd! gnd! nm W=200n L=60n f=1
Mn2 qa qb gnd! gnd! nm W=200n L=60n f=1
Mp3 p2 r vdd! vdd! pm W=400n L=60n f=1
Mp4 qb qa p2 vdd! pm W=400n L=60n f=1
Mn3 qb r gnd! gnd! nm W=200n L=60n f=1
Mn4 qb qa gnd! gnd! nm W=200n L=60n f=1
VVdd vdd! 0 1.2v
VGnd gnd! 0 0v
VS s gnd! pulse( 0 1.2 0 0.1n 0.1n 100n 200n)
VR r gnd! pulse( 0 1.2 0 0.1n 0.1n 50n 100n)
.tran 1n 200n
.END

