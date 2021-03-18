srlatch_2n

.lib "/tools/public/asiclib/umcoa/L65/process/UMK65FDKLLC00000OA_B11/Models/Hspice/l65ll_v181.lib" tt_ll_rvt12
.PARAM
.OPTION POST
.GLOBAL vss! vdd!

.model nm NMOS 
.model pm PMOS 

Mp1 x1 s vdd! vdd! pm W=800n L=60n f=2
Mp2 q qb x1 vdd! pm W=800n L=60n f=2
Mn1 q s gnd! gnd! nm W=200n L=60n f=1
Mn2 q qb gnd! gnd! nm W=200n L=60n f=1
Mp3 x2 r vdd! vdd! pm W=800n L=60n f=2
Mp4 qb q x2 vdd! pm W=800n L=60n f=2
Mn3 qb r gnd! gnd! nm W=200n L=60n f=1
Mn4 qb q gnd! gnd! nm W=200n L=60n f=1
VVdd vdd! 0 1.2v
VGnd gnd! 0 0v
VS s gnd! pulse( 0 1.2 0 0.1n 0.1n 4n 8n)
VR r gnd! pulse( 0 1.2 0 0.1n 0.1n 2n 4n)
.tran 1n 20n

.END
