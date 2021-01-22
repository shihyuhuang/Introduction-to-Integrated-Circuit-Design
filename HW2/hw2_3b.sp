*hw2_3b
.protect
.lib 'cic018.l' TT
.unprotect

.temp 25
.option post acout=0 runlvl=6


.param wn =2.217u
mmp1 out in1 vdd vdd p_18 w='wn' l=0.2u
mmp2 out in2 vdd vdd p_18 w='wn' l=0.2u
mmp3 out in3 vdd vdd p_18 w='wn' l=0.2u
mmn1 out in1 n12 vss n_18 w=5.4u l=0.2u
mmn2 n12 in2 n23 vss n_18 w=5.4u l=0.2u
mmn3 n23 in3 vss vss n_18 w=5.4u l=0.2u

C1 out gnd 100f
vdd vdd gnd 1.8
vss vss gnd 0
Vin1 in1 gnd 1.8
Vin2 in2 gnd 1.8
Vin3 in3 0 PWL 0 0 1n 0 1.1n 1.8 2n 1.8 2.1n 0


.op
.tran 0.01ns '10n'

.end