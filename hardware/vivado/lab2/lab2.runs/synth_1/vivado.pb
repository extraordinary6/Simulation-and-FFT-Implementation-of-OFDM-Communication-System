
|
Command: %s
53*	vivadotcl2K
7synth_design -top fft_ifft_top -part xc7vx690tffg1761-22default:defaultZ4-113h px� 
:
Starting synth_design
149*	vivadotclZ4-321h px� 
�
@Attempting to get a license for feature '%s' and/or device '%s'
308*common2
	Synthesis2default:default2
	xc7vx690t2default:defaultZ17-347h px� 
�
0Got license for feature '%s' and/or device '%s'
310*common2
	Synthesis2default:default2
	xc7vx690t2default:defaultZ17-349h px� 
�
%s*synth2�
sStarting Synthesize : Time (s): cpu = 00:00:04 ; elapsed = 00:00:05 . Memory (MB): peak = 383.379 ; gain = 103.660
2default:defaulth px� 
�
synthesizing module '%s'%s4497*oasys2 
fft_ifft_top2default:default2
 2default:default2Z
DC:/Users/admin/Desktop/System/Study/VLSI/lab2/verilog/fft_ifft_top.v2default:default2
12default:default8@Z8-6157h px� 
W
%s
*synth2?
+	Parameter N bound to: 64 - type: integer 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	Parameter RE_W bound to: 16 - type: integer 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	Parameter IM_W bound to: 16 - type: integer 
2default:defaulth p
x
� 
�
0Net %s in module/entity %s does not have driver.3422*oasys2
lut[17]2default:default2 
fft_ifft_top2default:default2Z
DC:/Users/admin/Desktop/System/Study/VLSI/lab2/verilog/fft_ifft_top.v2default:default2
572default:default8@Z8-3848h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2 
fft_ifft_top2default:default2
 2default:default2
12default:default2
12default:default2Z
DC:/Users/admin/Desktop/System/Study/VLSI/lab2/verilog/fft_ifft_top.v2default:default2
12default:default8@Z8-6155h px� 
�
%s*synth2�
sFinished Synthesize : Time (s): cpu = 00:00:06 ; elapsed = 00:00:07 . Memory (MB): peak = 589.516 ; gain = 309.797
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
~Finished Constraint Validation : Time (s): cpu = 00:00:06 ; elapsed = 00:00:08 . Memory (MB): peak = 589.516 ; gain = 309.797
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
V
%s
*synth2>
*Start Loading Part and Timing Information
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
M
%s
*synth25
!Loading part: xc7vx690tffg1761-2
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Loading Part and Timing Information : Time (s): cpu = 00:00:06 ; elapsed = 00:00:08 . Memory (MB): peak = 589.516 ; gain = 309.797
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
Y
Loading part %s157*device2&
xc7vx690tffg1761-22default:defaultZ21-403h px� 
w
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2
lev_cnt2default:defaultZ8-5546h px� 
~
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2"
data_out_valid2default:defaultZ8-5546h px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished RTL Optimization Phase 2 : Time (s): cpu = 00:00:43 ; elapsed = 00:00:33 . Memory (MB): peak = 1154.695 ; gain = 874.977
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
E
%s
*synth2-

Report RTL Partitions: 
2default:defaulth p
x
� 
a
%s
*synth2I
5+------+-------------------+------------+----------+
2default:defaulth p
x
� 
a
%s
*synth2I
5|      |RTL Partition      |Replication |Instances |
2default:defaulth p
x
� 
a
%s
*synth2I
5+------+-------------------+------------+----------+
2default:defaulth p
x
� 
a
%s
*synth2I
5|1     |fft_ifft_top__GB0  |           1|     30208|
2default:defaulth p
x
� 
a
%s
*synth2I
5|2     |fft_ifft_top__GB1  |           1|     37760|
2default:defaulth p
x
� 
a
%s
*synth2I
5|3     |fft_ifft_top__GB2  |           1|     37760|
2default:defaulth p
x
� 
a
%s
*synth2I
5|4     |fft_ifft_top__GB3  |           1|     30208|
2default:defaulth p
x
� 
a
%s
*synth2I
5|5     |logic__89__GD      |           1|     30208|
2default:defaulth p
x
� 
a
%s
*synth2I
5|6     |datapath__18__GD   |           1|     23934|
2default:defaulth p
x
� 
a
%s
*synth2I
5|7     |logic__162__GD     |           1|     37760|
2default:defaulth p
x
� 
a
%s
*synth2I
5|8     |fft_ifft_top__GB7  |           1|     48232|
2default:defaulth p
x
� 
a
%s
*synth2I
5|9     |fft_ifft_top__GB8  |           1|     33007|
2default:defaulth p
x
� 
a
%s
*synth2I
5|10    |fft_ifft_top__GB9  |           1|     54324|
2default:defaulth p
x
� 
a
%s
*synth2I
5|11    |fft_ifft_top__GB10 |           1|     25952|
2default:defaulth p
x
� 
a
%s
*synth2I
5|12    |fft_ifft_top__GB11 |           1|     40616|
2default:defaulth p
x
� 
a
%s
*synth2I
5|13    |fft_ifft_top__GB12 |           1|     34632|
2default:defaulth p
x
� 
a
%s
*synth2I
5|14    |fft_ifft_top__GB13 |           1|     40559|
2default:defaulth p
x
� 
a
%s
*synth2I
5|15    |datapath__42__GD   |           1|     25455|
2default:defaulth p
x
� 
a
%s
*synth2I
5|16    |fft_ifft_top__GB15 |           1|     48111|
2default:defaulth p
x
� 
a
%s
*synth2I
5|17    |logic__151__GD     |           1|     30212|
2default:defaulth p
x
� 
a
%s
*synth2I
5|18    |datapath__43__GD   |           1|     25455|
2default:defaulth p
x
� 
a
%s
*synth2I
5|19    |datapath__48__GD   |           1|     25455|
2default:defaulth p
x
� 
a
%s
*synth2I
5|20    |datapath__39__GD   |           1|     25455|
2default:defaulth p
x
� 
a
%s
*synth2I
5|21    |fft_ifft_top__GB20 |           1|     52647|
2default:defaulth p
x
� 
a
%s
*synth2I
5|22    |fft_ifft_top__GB21 |           1|     11701|
2default:defaulth p
x
� 
a
%s
*synth2I
5|23    |fft_ifft_top__GB22 |           1|     30040|
2default:defaulth p
x
� 
a
%s
*synth2I
5|24    |fft_ifft_top__GB23 |           1|     24368|
2default:defaulth p
x
� 
a
%s
*synth2I
5|25    |fft_ifft_top__GB24 |           1|      8060|
2default:defaulth p
x
� 
a
%s
*synth2I
5|26    |fft_ifft_top__GB25 |           1|     29972|
2default:defaulth p
x
� 
a
%s
*synth2I
5|27    |fft_ifft_top__GB26 |           1|     10458|
2default:defaulth p
x
� 
a
%s
*synth2I
5+------+-------------------+------------+----------+
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
L
%s
*synth24
 Start RTL Component Statistics 
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
� 
:
%s
*synth2"
+---Adders : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   4 Input    118 Bit       Adders := 3     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   3 Input    118 Bit       Adders := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input     32 Bit       Adders := 4     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input     16 Bit       Adders := 3     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input     15 Bit       Adders := 3     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      7 Bit       Adders := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      6 Bit       Adders := 3     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      4 Bit       Adders := 1     
2default:defaulth p
x
� 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	             1024 Bit    Registers := 2     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	              118 Bit    Registers := 14    
2default:defaulth p
x
� 
Z
%s
*synth2B
.	               16 Bit    Registers := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                7 Bit    Registers := 6     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                6 Bit    Registers := 3     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                4 Bit    Registers := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                1 Bit    Registers := 1     
2default:defaulth p
x
� 
?
%s
*synth2'
+---Multipliers : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	               16x118  Multipliers := 4     
2default:defaulth p
x
� 
9
%s
*synth2!
+---Muxes : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input   7552 Bit        Muxes := 8     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input   1024 Bit        Muxes := 28    
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input     16 Bit        Muxes := 6     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	  33 Input      7 Bit        Muxes := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      6 Bit        Muxes := 3     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      5 Bit        Muxes := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      1 Bit        Muxes := 8     
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
O
%s
*synth27
#Finished RTL Component Statistics 
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
Y
%s
*synth2A
-Start RTL Hierarchical Component Statistics 
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
O
%s
*synth27
#Hierarchical RTL Component report 
2default:defaulth p
x
� 
A
%s
*synth2)
Module fft_ifft_top 
2default:defaulth p
x
� 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
� 
:
%s
*synth2"
+---Adders : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   4 Input    118 Bit       Adders := 3     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   3 Input    118 Bit       Adders := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input     32 Bit       Adders := 4     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input     16 Bit       Adders := 3     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input     15 Bit       Adders := 3     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      7 Bit       Adders := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      6 Bit       Adders := 3     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      4 Bit       Adders := 1     
2default:defaulth p
x
� 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	             1024 Bit    Registers := 2     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	              118 Bit    Registers := 14    
2default:defaulth p
x
� 
Z
%s
*synth2B
.	               16 Bit    Registers := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                7 Bit    Registers := 6     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                6 Bit    Registers := 3     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                4 Bit    Registers := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                1 Bit    Registers := 1     
2default:defaulth p
x
� 
?
%s
*synth2'
+---Multipliers : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	               16x118  Multipliers := 4     
2default:defaulth p
x
� 
9
%s
*synth2!
+---Muxes : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input   7552 Bit        Muxes := 8     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input   1024 Bit        Muxes := 28    
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input     16 Bit        Muxes := 6     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	  33 Input      7 Bit        Muxes := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      6 Bit        Muxes := 3     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      5 Bit        Muxes := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      1 Bit        Muxes := 8     
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
[
%s
*synth2C
/Finished RTL Hierarchical Component Statistics
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
H
%s
*synth20
Start Part Resource Summary
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s
*synth2p
\Part Resources:
DSPs: 3600 (col length:200)
BRAMs: 2940 (col length: RAMB18 200 RAMB36 100)
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
K
%s
*synth23
Finished Part Resource Summary
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
HMultithreading enabled for synth_design using a maximum of %s processes.4031*oasys2
22default:defaultZ8-5580h px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
W
%s
*synth2?
+Start Cross Boundary and Area Optimization
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
cNot enough pipeline registers after wide multiplier. Recommended levels of pipeline registers is %s4267*oasys2
72default:default2Z
DC:/Users/admin/Desktop/System/Study/VLSI/lab2/verilog/fft_ifft_top.v2default:default2
2552default:default8@Z8-5845h px� 
�
cNot enough pipeline registers after wide multiplier. Recommended levels of pipeline registers is %s4267*oasys2
72default:default2Z
DC:/Users/admin/Desktop/System/Study/VLSI/lab2/verilog/fft_ifft_top.v2default:default2
2712default:default8@Z8-5845h px� 
�
cNot enough pipeline registers after wide multiplier. Recommended levels of pipeline registers is %s4267*oasys2
72default:default2Z
DC:/Users/admin/Desktop/System/Study/VLSI/lab2/verilog/fft_ifft_top.v2default:default2
2632default:default8@Z8-5845h px� 
�
cNot enough pipeline registers after wide multiplier. Recommended levels of pipeline registers is %s4267*oasys2
72default:default2Z
DC:/Users/admin/Desktop/System/Study/VLSI/lab2/verilog/fft_ifft_top.v2default:default2
2792default:default8@Z8-5845h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2
mut2_reg2default:default2Z
DC:/Users/admin/Desktop/System/Study/VLSI/lab2/verilog/fft_ifft_top.v2default:default2
2612default:default8@Z8-6014h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2
mut4_reg2default:default2Z
DC:/Users/admin/Desktop/System/Study/VLSI/lab2/verilog/fft_ifft_top.v2default:default2
2772default:default8@Z8-6014h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2
mut3_reg2default:default2Z
DC:/Users/admin/Desktop/System/Study/VLSI/lab2/verilog/fft_ifft_top.v2default:default2
2692default:default8@Z8-6014h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2
mut1_reg2default:default2Z
DC:/Users/admin/Desktop/System/Study/VLSI/lab2/verilog/fft_ifft_top.v2default:default2
2532default:default8@Z8-6014h px� 
f
%s
*synth2N
:DSP Report: Generating DSP mut10, operation Mode is: A*B.
2default:defaulth p
x
� 
c
%s
*synth2K
7DSP Report: operator mut10 is absorbed into DSP mut10.
2default:defaulth p
x
� 
c
%s
*synth2K
7DSP Report: operator mut10 is absorbed into DSP mut10.
2default:defaulth p
x
� 
f
%s
*synth2N
:DSP Report: Generating DSP mut10, operation Mode is: A*B.
2default:defaulth p
x
� 
c
%s
*synth2K
7DSP Report: operator mut10 is absorbed into DSP mut10.
2default:defaulth p
x
� 
c
%s
*synth2K
7DSP Report: operator mut10 is absorbed into DSP mut10.
2default:defaulth p
x
� 
q
%s
*synth2Y
EDSP Report: Generating DSP mut10, operation Mode is: (PCIN>>17)+A*B.
2default:defaulth p
x
� 
c
%s
*synth2K
7DSP Report: operator mut10 is absorbed into DSP mut10.
2default:defaulth p
x
� 
c
%s
*synth2K
7DSP Report: operator mut10 is absorbed into DSP mut10.
2default:defaulth p
x
� 
q
%s
*synth2Y
EDSP Report: Generating DSP mut10, operation Mode is: (PCIN>>17)+A*B.
2default:defaulth p
x
� 
c
%s
*synth2K
7DSP Report: operator mut10 is absorbed into DSP mut10.
2default:defaulth p
x
� 
c
%s
*synth2K
7DSP Report: operator mut10 is absorbed into DSP mut10.
2default:defaulth p
x
� 
f
%s
*synth2N
:DSP Report: Generating DSP mut10, operation Mode is: A*B.
2default:defaulth p
x
� 
c
%s
*synth2K
7DSP Report: operator mut10 is absorbed into DSP mut10.
2default:defaulth p
x
� 
c
%s
*synth2K
7DSP Report: operator mut10 is absorbed into DSP mut10.
2default:defaulth p
x
� 
q
%s
*synth2Y
EDSP Report: Generating DSP mut10, operation Mode is: (PCIN>>17)+A*B.
2default:defaulth p
x
� 
c
%s
*synth2K
7DSP Report: operator mut10 is absorbed into DSP mut10.
2default:defaulth p
x
� 
c
%s
*synth2K
7DSP Report: operator mut10 is absorbed into DSP mut10.
2default:defaulth p
x
� 
q
%s
*synth2Y
EDSP Report: Generating DSP mut10, operation Mode is: (PCIN>>17)+A*B.
2default:defaulth p
x
� 
c
%s
*synth2K
7DSP Report: operator mut10 is absorbed into DSP mut10.
2default:defaulth p
x
� 
c
%s
*synth2K
7DSP Report: operator mut10 is absorbed into DSP mut10.
2default:defaulth p
x
� 
f
%s
*synth2N
:DSP Report: Generating DSP mut30, operation Mode is: A*B.
2default:defaulth p
x
� 
c
%s
*synth2K
7DSP Report: operator mut30 is absorbed into DSP mut30.
2default:defaulth p
x
� 
c
%s
*synth2K
7DSP Report: operator mut30 is absorbed into DSP mut30.
2default:defaulth p
x
� 
f
%s
*synth2N
:DSP Report: Generating DSP mut30, operation Mode is: A*B.
2default:defaulth p
x
� 
c
%s
*synth2K
7DSP Report: operator mut30 is absorbed into DSP mut30.
2default:defaulth p
x
� 
c
%s
*synth2K
7DSP Report: operator mut30 is absorbed into DSP mut30.
2default:defaulth p
x
� 
q
%s
*synth2Y
EDSP Report: Generating DSP mut30, operation Mode is: (PCIN>>17)+A*B.
2default:defaulth p
x
� 
c
%s
*synth2K
7DSP Report: operator mut30 is absorbed into DSP mut30.
2default:defaulth p
x
� 
c
%s
*synth2K
7DSP Report: operator mut30 is absorbed into DSP mut30.
2default:defaulth p
x
� 
q
%s
*synth2Y
EDSP Report: Generating DSP mut30, operation Mode is: (PCIN>>17)+A*B.
2default:defaulth p
x
� 
c
%s
*synth2K
7DSP Report: operator mut30 is absorbed into DSP mut30.
2default:defaulth p
x
� 
c
%s
*synth2K
7DSP Report: operator mut30 is absorbed into DSP mut30.
2default:defaulth p
x
� 
f
%s
*synth2N
:DSP Report: Generating DSP mut30, operation Mode is: A*B.
2default:defaulth p
x
� 
c
%s
*synth2K
7DSP Report: operator mut30 is absorbed into DSP mut30.
2default:defaulth p
x
� 
c
%s
*synth2K
7DSP Report: operator mut30 is absorbed into DSP mut30.
2default:defaulth p
x
� 
q
%s
*synth2Y
EDSP Report: Generating DSP mut30, operation Mode is: (PCIN>>17)+A*B.
2default:defaulth p
x
� 
c
%s
*synth2K
7DSP Report: operator mut30 is absorbed into DSP mut30.
2default:defaulth p
x
� 
c
%s
*synth2K
7DSP Report: operator mut30 is absorbed into DSP mut30.
2default:defaulth p
x
� 
q
%s
*synth2Y
EDSP Report: Generating DSP mut30, operation Mode is: (PCIN>>17)+A*B.
2default:defaulth p
x
� 
c
%s
*synth2K
7DSP Report: operator mut30 is absorbed into DSP mut30.
2default:defaulth p
x
� 
c
%s
*synth2K
7DSP Report: operator mut30 is absorbed into DSP mut30.
2default:defaulth p
x
� 
f
%s
*synth2N
:DSP Report: Generating DSP mut20, operation Mode is: A*B.
2default:defaulth p
x
� 
c
%s
*synth2K
7DSP Report: operator mut20 is absorbed into DSP mut20.
2default:defaulth p
x
� 
c
%s
*synth2K
7DSP Report: operator mut20 is absorbed into DSP mut20.
2default:defaulth p
x
� 
f
%s
*synth2N
:DSP Report: Generating DSP mut20, operation Mode is: A*B.
2default:defaulth p
x
� 
c
%s
*synth2K
7DSP Report: operator mut20 is absorbed into DSP mut20.
2default:defaulth p
x
� 
c
%s
*synth2K
7DSP Report: operator mut20 is absorbed into DSP mut20.
2default:defaulth p
x
� 
q
%s
*synth2Y
EDSP Report: Generating DSP mut20, operation Mode is: (PCIN>>17)+A*B.
2default:defaulth p
x
� 
c
%s
*synth2K
7DSP Report: operator mut20 is absorbed into DSP mut20.
2default:defaulth p
x
� 
c
%s
*synth2K
7DSP Report: operator mut20 is absorbed into DSP mut20.
2default:defaulth p
x
� 
q
%s
*synth2Y
EDSP Report: Generating DSP mut20, operation Mode is: (PCIN>>17)+A*B.
2default:defaulth p
x
� 
c
%s
*synth2K
7DSP Report: operator mut20 is absorbed into DSP mut20.
2default:defaulth p
x
� 
c
%s
*synth2K
7DSP Report: operator mut20 is absorbed into DSP mut20.
2default:defaulth p
x
� 
f
%s
*synth2N
:DSP Report: Generating DSP mut20, operation Mode is: A*B.
2default:defaulth p
x
� 
c
%s
*synth2K
7DSP Report: operator mut20 is absorbed into DSP mut20.
2default:defaulth p
x
� 
c
%s
*synth2K
7DSP Report: operator mut20 is absorbed into DSP mut20.
2default:defaulth p
x
� 
q
%s
*synth2Y
EDSP Report: Generating DSP mut20, operation Mode is: (PCIN>>17)+A*B.
2default:defaulth p
x
� 
c
%s
*synth2K
7DSP Report: operator mut20 is absorbed into DSP mut20.
2default:defaulth p
x
� 
c
%s
*synth2K
7DSP Report: operator mut20 is absorbed into DSP mut20.
2default:defaulth p
x
� 
q
%s
*synth2Y
EDSP Report: Generating DSP mut20, operation Mode is: (PCIN>>17)+A*B.
2default:defaulth p
x
� 
c
%s
*synth2K
7DSP Report: operator mut20 is absorbed into DSP mut20.
2default:defaulth p
x
� 
c
%s
*synth2K
7DSP Report: operator mut20 is absorbed into DSP mut20.
2default:defaulth p
x
� 
f
%s
*synth2N
:DSP Report: Generating DSP mut40, operation Mode is: A*B.
2default:defaulth p
x
� 
c
%s
*synth2K
7DSP Report: operator mut40 is absorbed into DSP mut40.
2default:defaulth p
x
� 
c
%s
*synth2K
7DSP Report: operator mut40 is absorbed into DSP mut40.
2default:defaulth p
x
� 
f
%s
*synth2N
:DSP Report: Generating DSP mut40, operation Mode is: A*B.
2default:defaulth p
x
� 
c
%s
*synth2K
7DSP Report: operator mut40 is absorbed into DSP mut40.
2default:defaulth p
x
� 
c
%s
*synth2K
7DSP Report: operator mut40 is absorbed into DSP mut40.
2default:defaulth p
x
� 
q
%s
*synth2Y
EDSP Report: Generating DSP mut40, operation Mode is: (PCIN>>17)+A*B.
2default:defaulth p
x
� 
c
%s
*synth2K
7DSP Report: operator mut40 is absorbed into DSP mut40.
2default:defaulth p
x
� 
c
%s
*synth2K
7DSP Report: operator mut40 is absorbed into DSP mut40.
2default:defaulth p
x
� 
q
%s
*synth2Y
EDSP Report: Generating DSP mut40, operation Mode is: (PCIN>>17)+A*B.
2default:defaulth p
x
� 
c
%s
*synth2K
7DSP Report: operator mut40 is absorbed into DSP mut40.
2default:defaulth p
x
� 
c
%s
*synth2K
7DSP Report: operator mut40 is absorbed into DSP mut40.
2default:defaulth p
x
� 
f
%s
*synth2N
:DSP Report: Generating DSP mut40, operation Mode is: A*B.
2default:defaulth p
x
� 
c
%s
*synth2K
7DSP Report: operator mut40 is absorbed into DSP mut40.
2default:defaulth p
x
� 
c
%s
*synth2K
7DSP Report: operator mut40 is absorbed into DSP mut40.
2default:defaulth p
x
� 
q
%s
*synth2Y
EDSP Report: Generating DSP mut40, operation Mode is: (PCIN>>17)+A*B.
2default:defaulth p
x
� 
c
%s
*synth2K
7DSP Report: operator mut40 is absorbed into DSP mut40.
2default:defaulth p
x
� 
c
%s
*synth2K
7DSP Report: operator mut40 is absorbed into DSP mut40.
2default:defaulth p
x
� 
q
%s
*synth2Y
EDSP Report: Generating DSP mut40, operation Mode is: (PCIN>>17)+A*B.
2default:defaulth p
x
� 
c
%s
*synth2K
7DSP Report: operator mut40 is absorbed into DSP mut40.
2default:defaulth p
x
� 
c
%s
*synth2K
7DSP Report: operator mut40 is absorbed into DSP mut40.
2default:defaulth p
x
� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2"
\im1_p_reg[0] 2default:defaultZ8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2"
\im1_p_reg[1] 2default:defaultZ8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2"
\im1_p_reg[2] 2default:defaultZ8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2"
\im1_p_reg[3] 2default:defaultZ8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2"
\im1_p_reg[4] 2default:defaultZ8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2"
\im1_p_reg[5] 2default:defaultZ8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2"
\im1_p_reg[6] 2default:defaultZ8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2"
\im1_p_reg[7] 2default:defaultZ8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2"
\re1_p_reg[0] 2default:defaultZ8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2"
\re1_p_reg[1] 2default:defaultZ8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2"
\re1_p_reg[2] 2default:defaultZ8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2"
\re1_p_reg[3] 2default:defaultZ8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2"
\re1_p_reg[4] 2default:defaultZ8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2"
\re1_p_reg[5] 2default:defaultZ8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2"
\re1_p_reg[6] 2default:defaultZ8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2"
\re1_p_reg[7] 2default:defaultZ8-3333h px� 
�
+design %s has port %s driven by constant %s3447*oasys2&
fft_ifft_top__GB232default:default2!
p_20_in[1023]2default:default2
02default:defaultZ8-3917h px� 
�
+design %s has port %s driven by constant %s3447*oasys2&
fft_ifft_top__GB232default:default2!
p_20_in[1007]2default:default2
02default:defaultZ8-3917h px� 
�
+design %s has port %s driven by constant %s3447*oasys2&
fft_ifft_top__GB232default:default2 
p_20_in[991]2default:default2
02default:defaultZ8-3917h px� 
�
+design %s has port %s driven by constant %s3447*oasys2&
fft_ifft_top__GB232default:default2 
p_20_in[975]2default:default2
02default:defaultZ8-3917h px� 
�
+design %s has port %s driven by constant %s3447*oasys2&
fft_ifft_top__GB232default:default2 
p_20_in[959]2default:default2
02default:defaultZ8-3917h px� 
�
+design %s has port %s driven by constant %s3447*oasys2&
fft_ifft_top__GB232default:default2 
p_20_in[943]2default:default2
02default:defaultZ8-3917h px� 
�
+design %s has port %s driven by constant %s3447*oasys2&
fft_ifft_top__GB232default:default2 
p_20_in[927]2default:default2
02default:defaultZ8-3917h px� 
�
+design %s has port %s driven by constant %s3447*oasys2&
fft_ifft_top__GB232default:default2 
p_20_in[911]2default:default2
02default:defaultZ8-3917h px� 
�
+design %s has port %s driven by constant %s3447*oasys2&
fft_ifft_top__GB232default:default2 
p_20_in[895]2default:default2
02default:defaultZ8-3917h px� 
�
+design %s has port %s driven by constant %s3447*oasys2&
fft_ifft_top__GB232default:default2 
p_20_in[879]2default:default2
02default:defaultZ8-3917h px� 
�
+design %s has port %s driven by constant %s3447*oasys2&
fft_ifft_top__GB232default:default2 
p_20_in[863]2default:default2
02default:defaultZ8-3917h px� 
�
+design %s has port %s driven by constant %s3447*oasys2&
fft_ifft_top__GB232default:default2 
p_20_in[847]2default:default2
02default:defaultZ8-3917h px� 
�
+design %s has port %s driven by constant %s3447*oasys2&
fft_ifft_top__GB232default:default2 
p_20_in[831]2default:default2
02default:defaultZ8-3917h px� 
�
+design %s has port %s driven by constant %s3447*oasys2&
fft_ifft_top__GB232default:default2 
p_20_in[815]2default:default2
02default:defaultZ8-3917h px� 
�
+design %s has port %s driven by constant %s3447*oasys2&
fft_ifft_top__GB232default:default2 
p_20_in[799]2default:default2
02default:defaultZ8-3917h px� 
�
+design %s has port %s driven by constant %s3447*oasys2&
fft_ifft_top__GB232default:default2 
p_20_in[783]2default:default2
02default:defaultZ8-3917h px� 
�
+design %s has port %s driven by constant %s3447*oasys2&
fft_ifft_top__GB232default:default2 
p_20_in[767]2default:default2
02default:defaultZ8-3917h px� 
�
+design %s has port %s driven by constant %s3447*oasys2&
fft_ifft_top__GB232default:default2 
p_20_in[751]2default:default2
02default:defaultZ8-3917h px� 
�
+design %s has port %s driven by constant %s3447*oasys2&
fft_ifft_top__GB232default:default2 
p_20_in[735]2default:default2
02default:defaultZ8-3917h px� 
�
+design %s has port %s driven by constant %s3447*oasys2&
fft_ifft_top__GB232default:default2 
p_20_in[719]2default:default2
02default:defaultZ8-3917h px� 
�
+design %s has port %s driven by constant %s3447*oasys2&
fft_ifft_top__GB232default:default2 
p_20_in[703]2default:default2
02default:defaultZ8-3917h px� 
�
+design %s has port %s driven by constant %s3447*oasys2&
fft_ifft_top__GB232default:default2 
p_20_in[687]2default:default2
02default:defaultZ8-3917h px� 
�
+design %s has port %s driven by constant %s3447*oasys2&
fft_ifft_top__GB232default:default2 
p_20_in[671]2default:default2
02default:defaultZ8-3917h px� 
�
+design %s has port %s driven by constant %s3447*oasys2&
fft_ifft_top__GB232default:default2 
p_20_in[655]2default:default2
02default:defaultZ8-3917h px� 
�
+design %s has port %s driven by constant %s3447*oasys2&
fft_ifft_top__GB232default:default2 
p_20_in[639]2default:default2
02default:defaultZ8-3917h px� 
�
+design %s has port %s driven by constant %s3447*oasys2&
fft_ifft_top__GB232default:default2 
p_20_in[623]2default:default2
02default:defaultZ8-3917h px� 
�
+design %s has port %s driven by constant %s3447*oasys2&
fft_ifft_top__GB232default:default2 
p_20_in[607]2default:default2
02default:defaultZ8-3917h px� 
�
+design %s has port %s driven by constant %s3447*oasys2&
fft_ifft_top__GB232default:default2 
p_20_in[591]2default:default2
02default:defaultZ8-3917h px� 
�
+design %s has port %s driven by constant %s3447*oasys2&
fft_ifft_top__GB232default:default2 
p_20_in[575]2default:default2
02default:defaultZ8-3917h px� 
�
+design %s has port %s driven by constant %s3447*oasys2&
fft_ifft_top__GB232default:default2 
p_20_in[559]2default:default2
02default:defaultZ8-3917h px� 
�
+design %s has port %s driven by constant %s3447*oasys2&
fft_ifft_top__GB232default:default2 
p_20_in[543]2default:default2
02default:defaultZ8-3917h px� 
�
+design %s has port %s driven by constant %s3447*oasys2&
fft_ifft_top__GB232default:default2 
p_20_in[527]2default:default2
02default:defaultZ8-3917h px� 
�
+design %s has port %s driven by constant %s3447*oasys2&
fft_ifft_top__GB232default:default2 
p_20_in[511]2default:default2
02default:defaultZ8-3917h px� 
�
+design %s has port %s driven by constant %s3447*oasys2&
fft_ifft_top__GB232default:default2 
p_20_in[495]2default:default2
02default:defaultZ8-3917h px� 
�
+design %s has port %s driven by constant %s3447*oasys2&
fft_ifft_top__GB232default:default2 
p_20_in[479]2default:default2
02default:defaultZ8-3917h px� 
�
+design %s has port %s driven by constant %s3447*oasys2&
fft_ifft_top__GB232default:default2 
p_20_in[463]2default:default2
02default:defaultZ8-3917h px� 
�
+design %s has port %s driven by constant %s3447*oasys2&
fft_ifft_top__GB232default:default2 
p_20_in[447]2default:default2
02default:defaultZ8-3917h px� 
�
+design %s has port %s driven by constant %s3447*oasys2&
fft_ifft_top__GB232default:default2 
p_20_in[431]2default:default2
02default:defaultZ8-3917h px� 
�
+design %s has port %s driven by constant %s3447*oasys2&
fft_ifft_top__GB232default:default2 
p_20_in[415]2default:default2
02default:defaultZ8-3917h px� 
�
+design %s has port %s driven by constant %s3447*oasys2&
fft_ifft_top__GB232default:default2 
p_20_in[399]2default:default2
02default:defaultZ8-3917h px� 
�
+design %s has port %s driven by constant %s3447*oasys2&
fft_ifft_top__GB232default:default2 
p_20_in[383]2default:default2
02default:defaultZ8-3917h px� 
�
+design %s has port %s driven by constant %s3447*oasys2&
fft_ifft_top__GB232default:default2 
p_20_in[367]2default:default2
02default:defaultZ8-3917h px� 
�
+design %s has port %s driven by constant %s3447*oasys2&
fft_ifft_top__GB232default:default2 
p_20_in[351]2default:default2
02default:defaultZ8-3917h px� 
�
+design %s has port %s driven by constant %s3447*oasys2&
fft_ifft_top__GB232default:default2 
p_20_in[335]2default:default2
02default:defaultZ8-3917h px� 
�
+design %s has port %s driven by constant %s3447*oasys2&
fft_ifft_top__GB232default:default2 
p_20_in[319]2default:default2
02default:defaultZ8-3917h px� 
�
+design %s has port %s driven by constant %s3447*oasys2&
fft_ifft_top__GB232default:default2 
p_20_in[303]2default:default2
02default:defaultZ8-3917h px� 
�
+design %s has port %s driven by constant %s3447*oasys2&
fft_ifft_top__GB232default:default2 
p_20_in[287]2default:default2
02default:defaultZ8-3917h px� 
�
+design %s has port %s driven by constant %s3447*oasys2&
fft_ifft_top__GB232default:default2 
p_20_in[271]2default:default2
02default:defaultZ8-3917h px� 
�
+design %s has port %s driven by constant %s3447*oasys2&
fft_ifft_top__GB232default:default2 
p_20_in[255]2default:default2
02default:defaultZ8-3917h px� 
�
+design %s has port %s driven by constant %s3447*oasys2&
fft_ifft_top__GB232default:default2 
p_20_in[239]2default:default2
02default:defaultZ8-3917h px� 
�
+design %s has port %s driven by constant %s3447*oasys2&
fft_ifft_top__GB232default:default2 
p_20_in[223]2default:default2
02default:defaultZ8-3917h px� 
�
+design %s has port %s driven by constant %s3447*oasys2&
fft_ifft_top__GB232default:default2 
p_20_in[207]2default:default2
02default:defaultZ8-3917h px� 
�
+design %s has port %s driven by constant %s3447*oasys2&
fft_ifft_top__GB232default:default2 
p_20_in[191]2default:default2
02default:defaultZ8-3917h px� 
�
+design %s has port %s driven by constant %s3447*oasys2&
fft_ifft_top__GB232default:default2 
p_20_in[175]2default:default2
02default:defaultZ8-3917h px� 
�
+design %s has port %s driven by constant %s3447*oasys2&
fft_ifft_top__GB232default:default2 
p_20_in[159]2default:default2
02default:defaultZ8-3917h px� 
�
+design %s has port %s driven by constant %s3447*oasys2&
fft_ifft_top__GB232default:default2 
p_20_in[143]2default:default2
02default:defaultZ8-3917h px� 
�
+design %s has port %s driven by constant %s3447*oasys2&
fft_ifft_top__GB232default:default2 
p_20_in[127]2default:default2
02default:defaultZ8-3917h px� 
�
+design %s has port %s driven by constant %s3447*oasys2&
fft_ifft_top__GB232default:default2 
p_20_in[111]2default:default2
02default:defaultZ8-3917h px� 
�
+design %s has port %s driven by constant %s3447*oasys2&
fft_ifft_top__GB232default:default2
p_20_in[95]2default:default2
02default:defaultZ8-3917h px� 
�
+design %s has port %s driven by constant %s3447*oasys2&
fft_ifft_top__GB232default:default2
p_20_in[79]2default:default2
02default:defaultZ8-3917h px� 
�
+design %s has port %s driven by constant %s3447*oasys2&
fft_ifft_top__GB232default:default2
p_20_in[63]2default:default2
02default:defaultZ8-3917h px� 
�
+design %s has port %s driven by constant %s3447*oasys2&
fft_ifft_top__GB232default:default2
p_20_in[47]2default:default2
02default:defaultZ8-3917h px� 
�
+design %s has port %s driven by constant %s3447*oasys2&
fft_ifft_top__GB232default:default2
p_20_in[31]2default:default2
02default:defaultZ8-3917h px� 
�
+design %s has port %s driven by constant %s3447*oasys2&
fft_ifft_top__GB232default:default2
p_20_in[15]2default:default2
02default:defaultZ8-3917h px� 
�
+design %s has port %s driven by constant %s3447*oasys2&
fft_ifft_top__GB232default:default2
O9[10]2default:default2
02default:defaultZ8-3917h px� 
�
+design %s has port %s driven by constant %s3447*oasys2&
fft_ifft_top__GB232default:default2
O9[3]2default:default2
02default:defaultZ8-3917h px� 
�
+design %s has port %s driven by constant %s3447*oasys2&
fft_ifft_top__GB232default:default2
O9[2]2default:default2
02default:defaultZ8-3917h px� 
�
+design %s has port %s driven by constant %s3447*oasys2&
fft_ifft_top__GB232default:default2
O9[1]2default:default2
02default:defaultZ8-3917h px� 
�
+design %s has port %s driven by constant %s3447*oasys2&
fft_ifft_top__GB232default:default2
O9[0]2default:default2
02default:defaultZ8-3917h px� 
�
+design %s has port %s driven by constant %s3447*oasys2&
fft_ifft_top__GB232default:default2 
p_9_in[1023]2default:default2
02default:defaultZ8-3917h px� 
�
+design %s has port %s driven by constant %s3447*oasys2&
fft_ifft_top__GB232default:default2 
p_9_in[1007]2default:default2
02default:defaultZ8-3917h px� 
�
+design %s has port %s driven by constant %s3447*oasys2&
fft_ifft_top__GB232default:default2
p_9_in[991]2default:default2
02default:defaultZ8-3917h px� 
�
+design %s has port %s driven by constant %s3447*oasys2&
fft_ifft_top__GB232default:default2
p_9_in[975]2default:default2
02default:defaultZ8-3917h px� 
�
+design %s has port %s driven by constant %s3447*oasys2&
fft_ifft_top__GB232default:default2
p_9_in[959]2default:default2
02default:defaultZ8-3917h px� 
�
+design %s has port %s driven by constant %s3447*oasys2&
fft_ifft_top__GB232default:default2
p_9_in[943]2default:default2
02default:defaultZ8-3917h px� 
�
+design %s has port %s driven by constant %s3447*oasys2&
fft_ifft_top__GB232default:default2
p_9_in[927]2default:default2
02default:defaultZ8-3917h px� 
�
+design %s has port %s driven by constant %s3447*oasys2&
fft_ifft_top__GB232default:default2
p_9_in[911]2default:default2
02default:defaultZ8-3917h px� 
�
+design %s has port %s driven by constant %s3447*oasys2&
fft_ifft_top__GB232default:default2
p_9_in[895]2default:default2
02default:defaultZ8-3917h px� 
�
+design %s has port %s driven by constant %s3447*oasys2&
fft_ifft_top__GB232default:default2
p_9_in[879]2default:default2
02default:defaultZ8-3917h px� 
�
+design %s has port %s driven by constant %s3447*oasys2&
fft_ifft_top__GB232default:default2
p_9_in[863]2default:default2
02default:defaultZ8-3917h px� 
�
+design %s has port %s driven by constant %s3447*oasys2&
fft_ifft_top__GB232default:default2
p_9_in[847]2default:default2
02default:defaultZ8-3917h px� 
�
+design %s has port %s driven by constant %s3447*oasys2&
fft_ifft_top__GB232default:default2
p_9_in[831]2default:default2
02default:defaultZ8-3917h px� 
�
+design %s has port %s driven by constant %s3447*oasys2&
fft_ifft_top__GB232default:default2
p_9_in[815]2default:default2
02default:defaultZ8-3917h px� 
�
+design %s has port %s driven by constant %s3447*oasys2&
fft_ifft_top__GB232default:default2
p_9_in[799]2default:default2
02default:defaultZ8-3917h px� 
�
+design %s has port %s driven by constant %s3447*oasys2&
fft_ifft_top__GB232default:default2
p_9_in[783]2default:default2
02default:defaultZ8-3917h px� 
�
+design %s has port %s driven by constant %s3447*oasys2&
fft_ifft_top__GB232default:default2
p_9_in[767]2default:default2
02default:defaultZ8-3917h px� 
�
+design %s has port %s driven by constant %s3447*oasys2&
fft_ifft_top__GB232default:default2
p_9_in[751]2default:default2
02default:defaultZ8-3917h px� 
�
+design %s has port %s driven by constant %s3447*oasys2&
fft_ifft_top__GB232default:default2
p_9_in[735]2default:default2
02default:defaultZ8-3917h px� 
�
+design %s has port %s driven by constant %s3447*oasys2&
fft_ifft_top__GB232default:default2
p_9_in[719]2default:default2
02default:defaultZ8-3917h px� 
�
+design %s has port %s driven by constant %s3447*oasys2&
fft_ifft_top__GB232default:default2
p_9_in[703]2default:default2
02default:defaultZ8-3917h px� 
�
+design %s has port %s driven by constant %s3447*oasys2&
fft_ifft_top__GB232default:default2
p_9_in[687]2default:default2
02default:defaultZ8-3917h px� 
�
+design %s has port %s driven by constant %s3447*oasys2&
fft_ifft_top__GB232default:default2
p_9_in[671]2default:default2
02default:defaultZ8-3917h px� 
�
+design %s has port %s driven by constant %s3447*oasys2&
fft_ifft_top__GB232default:default2
p_9_in[655]2default:default2
02default:defaultZ8-3917h px� 
�
+design %s has port %s driven by constant %s3447*oasys2&
fft_ifft_top__GB232default:default2
p_9_in[639]2default:default2
02default:defaultZ8-3917h px� 
�
+design %s has port %s driven by constant %s3447*oasys2&
fft_ifft_top__GB232default:default2
p_9_in[623]2default:default2
02default:defaultZ8-3917h px� 
�
+design %s has port %s driven by constant %s3447*oasys2&
fft_ifft_top__GB232default:default2
p_9_in[607]2default:default2
02default:defaultZ8-3917h px� 
�
+design %s has port %s driven by constant %s3447*oasys2&
fft_ifft_top__GB232default:default2
p_9_in[591]2default:default2
02default:defaultZ8-3917h px� 
�
+design %s has port %s driven by constant %s3447*oasys2&
fft_ifft_top__GB232default:default2
p_9_in[575]2default:default2
02default:defaultZ8-3917h px� 
�
+design %s has port %s driven by constant %s3447*oasys2&
fft_ifft_top__GB232default:default2
p_9_in[559]2default:default2
02default:defaultZ8-3917h px� 
�
+design %s has port %s driven by constant %s3447*oasys2&
fft_ifft_top__GB232default:default2
p_9_in[543]2default:default2
02default:defaultZ8-3917h px� 
�
�Message '%s' appears more than %s times and has been disabled. User can change this message limit to see more message instances.
14*common2 
Synth 8-39172default:default2
1002default:defaultZ17-14h px� 
�
�Message '%s' appears more than %s times and has been disabled. User can change this message limit to see more message instances.
14*common2 
Synth 8-39172default:default2
1002default:defaultZ17-14h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2%
twiddle_re_reg[0]2default:default2
FDE2default:default2&
twiddle_re_reg[15]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2%
twiddle_re_reg[1]2default:default2
FDE2default:default2&
twiddle_re_reg[15]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2%
twiddle_re_reg[2]2default:default2
FDE2default:default2&
twiddle_re_reg[15]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2%
twiddle_re_reg[3]2default:default2
FDE2default:default2&
twiddle_re_reg[15]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2%
twiddle_re_reg[4]2default:default2
FDE2default:default2&
twiddle_re_reg[15]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2%
twiddle_re_reg[5]2default:default2
FDE2default:default2&
twiddle_re_reg[15]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2%
twiddle_re_reg[6]2default:default2
FDE2default:default2&
twiddle_re_reg[15]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2%
twiddle_re_reg[7]2default:default2
FDE2default:default2&
twiddle_re_reg[15]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2%
twiddle_re_reg[8]2default:default2
FDE2default:default2&
twiddle_re_reg[15]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2%
twiddle_re_reg[9]2default:default2
FDE2default:default2&
twiddle_re_reg[15]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2&
twiddle_re_reg[10]2default:default2
FDE2default:default2&
twiddle_re_reg[15]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2&
twiddle_re_reg[11]2default:default2
FDE2default:default2&
twiddle_re_reg[15]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2&
twiddle_re_reg[12]2default:default2
FDE2default:default2&
twiddle_re_reg[15]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2&
twiddle_re_reg[13]2default:default2
FDE2default:default2&
twiddle_re_reg[15]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2&
twiddle_re_reg[14]2default:default2
FDE2default:default2&
twiddle_re_reg[15]2default:defaultZ8-3886h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2(
\twiddle_re_reg[15] 2default:defaultZ8-3333h px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Cross Boundary and Area Optimization : Time (s): cpu = 00:03:10 ; elapsed = 00:03:37 . Memory (MB): peak = 1381.398 ; gain = 1101.680
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�---------------------------------------------------------------------------------
Start ROM, RAM, DSP and Shift Register Reporting
2default:defaulth px� 
~
%s*synth2f
R---------------------------------------------------------------------------------
2default:defaulth px� 
_
%s*synth2G
3
DSP: Preliminary Mapping  Report (see note below)
2default:defaulth px� 
�
%s*synth2�
�+-------------+----------------+--------+--------+--------+--------+--------+------+------+------+------+-------+------+------+
2default:defaulth px� 
�
%s*synth2�
�|Module Name  | DSP Mapping    | A Size | B Size | C Size | D Size | P Size | AREG | BREG | CREG | DREG | ADREG | MREG | PREG | 
2default:defaulth px� 
�
%s*synth2�
�+-------------+----------------+--------+--------+--------+--------+--------+------+------+------+------+-------+------+------+
2default:defaulth px� 
�
%s*synth2�
�|fft_ifft_top | A*B            | 16     | 16     | -      | -      | 48     | 0    | 0    | -    | -    | -     | 0    | 0    | 
2default:defaulth px� 
�
%s*synth2�
�|fft_ifft_top | A*B            | 18     | 16     | -      | -      | 48     | 0    | 0    | -    | -    | -     | 0    | 0    | 
2default:defaulth px� 
�
%s*synth2�
�|fft_ifft_top | (PCIN>>17)+A*B | 18     | 16     | -      | -      | 48     | 0    | 0    | -    | -    | -     | 0    | 0    | 
2default:defaulth px� 
�
%s*synth2�
�|fft_ifft_top | (PCIN>>17)+A*B | 18     | 16     | -      | -      | 48     | 0    | 0    | -    | -    | -     | 0    | 0    | 
2default:defaulth px� 
�
%s*synth2�
�|fft_ifft_top | A*B            | 18     | 16     | -      | -      | 48     | 0    | 0    | -    | -    | -     | 0    | 0    | 
2default:defaulth px� 
�
%s*synth2�
�|fft_ifft_top | (PCIN>>17)+A*B | 18     | 16     | -      | -      | 48     | 0    | 0    | -    | -    | -     | 0    | 0    | 
2default:defaulth px� 
�
%s*synth2�
�|fft_ifft_top | (PCIN>>17)+A*B | 18     | 16     | -      | -      | 48     | 0    | 0    | -    | -    | -     | 0    | 0    | 
2default:defaulth px� 
�
%s*synth2�
�|fft_ifft_top | A*B            | 16     | 16     | -      | -      | 48     | 0    | 0    | -    | -    | -     | 0    | 0    | 
2default:defaulth px� 
�
%s*synth2�
�|fft_ifft_top | A*B            | 18     | 16     | -      | -      | 48     | 0    | 0    | -    | -    | -     | 0    | 0    | 
2default:defaulth px� 
�
%s*synth2�
�|fft_ifft_top | (PCIN>>17)+A*B | 18     | 16     | -      | -      | 48     | 0    | 0    | -    | -    | -     | 0    | 0    | 
2default:defaulth px� 
�
%s*synth2�
�|fft_ifft_top | (PCIN>>17)+A*B | 18     | 16     | -      | -      | 48     | 0    | 0    | -    | -    | -     | 0    | 0    | 
2default:defaulth px� 
�
%s*synth2�
�|fft_ifft_top | A*B            | 18     | 16     | -      | -      | 48     | 0    | 0    | -    | -    | -     | 0    | 0    | 
2default:defaulth px� 
�
%s*synth2�
�|fft_ifft_top | (PCIN>>17)+A*B | 18     | 16     | -      | -      | 48     | 0    | 0    | -    | -    | -     | 0    | 0    | 
2default:defaulth px� 
�
%s*synth2�
�|fft_ifft_top | (PCIN>>17)+A*B | 18     | 16     | -      | -      | 48     | 0    | 0    | -    | -    | -     | 0    | 0    | 
2default:defaulth px� 
�
%s*synth2�
�|fft_ifft_top | A*B            | 16     | 16     | -      | -      | 48     | 0    | 0    | -    | -    | -     | 0    | 0    | 
2default:defaulth px� 
�
%s*synth2�
�|fft_ifft_top | A*B            | 18     | 16     | -      | -      | 48     | 0    | 0    | -    | -    | -     | 0    | 0    | 
2default:defaulth px� 
�
%s*synth2�
�|fft_ifft_top | (PCIN>>17)+A*B | 18     | 16     | -      | -      | 48     | 0    | 0    | -    | -    | -     | 0    | 0    | 
2default:defaulth px� 
�
%s*synth2�
�|fft_ifft_top | (PCIN>>17)+A*B | 18     | 16     | -      | -      | 48     | 0    | 0    | -    | -    | -     | 0    | 0    | 
2default:defaulth px� 
�
%s*synth2�
�|fft_ifft_top | A*B            | 18     | 16     | -      | -      | 48     | 0    | 0    | -    | -    | -     | 0    | 0    | 
2default:defaulth px� 
�
%s*synth2�
�|fft_ifft_top | (PCIN>>17)+A*B | 18     | 16     | -      | -      | 48     | 0    | 0    | -    | -    | -     | 0    | 0    | 
2default:defaulth px� 
�
%s*synth2�
�|fft_ifft_top | (PCIN>>17)+A*B | 18     | 16     | -      | -      | 48     | 0    | 0    | -    | -    | -     | 0    | 0    | 
2default:defaulth px� 
�
%s*synth2�
�|fft_ifft_top | A*B            | 16     | 16     | -      | -      | 48     | 0    | 0    | -    | -    | -     | 0    | 0    | 
2default:defaulth px� 
�
%s*synth2�
�|fft_ifft_top | A*B            | 18     | 16     | -      | -      | 48     | 0    | 0    | -    | -    | -     | 0    | 0    | 
2default:defaulth px� 
�
%s*synth2�
�|fft_ifft_top | (PCIN>>17)+A*B | 18     | 16     | -      | -      | 48     | 0    | 0    | -    | -    | -     | 0    | 0    | 
2default:defaulth px� 
�
%s*synth2�
�|fft_ifft_top | (PCIN>>17)+A*B | 18     | 16     | -      | -      | 48     | 0    | 0    | -    | -    | -     | 0    | 0    | 
2default:defaulth px� 
�
%s*synth2�
�|fft_ifft_top | A*B            | 18     | 16     | -      | -      | 48     | 0    | 0    | -    | -    | -     | 0    | 0    | 
2default:defaulth px� 
�
%s*synth2�
�|fft_ifft_top | (PCIN>>17)+A*B | 18     | 16     | -      | -      | 48     | 0    | 0    | -    | -    | -     | 0    | 0    | 
2default:defaulth px� 
�
%s*synth2�
�|fft_ifft_top | (PCIN>>17)+A*B | 18     | 16     | -      | -      | 48     | 0    | 0    | -    | -    | -     | 0    | 0    | 
2default:defaulth px� 
�
%s*synth2�
�+-------------+----------------+--------+--------+--------+--------+--------+------+------+------+------+-------+------+------+

2default:defaulth px� 
�
%s*synth2�
�Note: The table above is a preliminary report that shows the DSPs inferred at the current stage of the synthesis flow. Some DSP may be reimplemented as non DSP primitives later in the synthesis flow. Multiple instantiated DSPs are reported only once.
2default:defaulth px� 
�
%s*synth2�
�---------------------------------------------------------------------------------
Finished ROM, RAM, DSP and Shift Register Reporting
2default:defaulth px� 
~
%s*synth2f
R---------------------------------------------------------------------------------
2default:defaulth px� 
E
%s
*synth2-

Report RTL Partitions: 
2default:defaulth p
x
� 
a
%s
*synth2I
5+------+-------------------+------------+----------+
2default:defaulth p
x
� 
a
%s
*synth2I
5|      |RTL Partition      |Replication |Instances |
2default:defaulth p
x
� 
a
%s
*synth2I
5+------+-------------------+------------+----------+
2default:defaulth p
x
� 
a
%s
*synth2I
5|1     |fft_ifft_top__GB0  |           1|     22657|
2default:defaulth p
x
� 
a
%s
*synth2I
5|2     |fft_ifft_top__GB1  |           1|     30209|
2default:defaulth p
x
� 
a
%s
*synth2I
5|3     |fft_ifft_top__GB2  |           1|     37760|
2default:defaulth p
x
� 
a
%s
*synth2I
5|4     |fft_ifft_top__GB3  |           1|     30208|
2default:defaulth p
x
� 
a
%s
*synth2I
5|5     |logic__89__GD      |           1|     30208|
2default:defaulth p
x
� 
a
%s
*synth2I
5|6     |datapath__18__GD   |           1|         0|
2default:defaulth p
x
� 
a
%s
*synth2I
5|7     |logic__162__GD     |           1|     30208|
2default:defaulth p
x
� 
a
%s
*synth2I
5|8     |fft_ifft_top__GB7  |           1|     48149|
2default:defaulth p
x
� 
a
%s
*synth2I
5|9     |fft_ifft_top__GB8  |           1|     24711|
2default:defaulth p
x
� 
a
%s
*synth2I
5|10    |fft_ifft_top__GB9  |           1|     54309|
2default:defaulth p
x
� 
a
%s
*synth2I
5|11    |fft_ifft_top__GB10 |           1|     24677|
2default:defaulth p
x
� 
a
%s
*synth2I
5|12    |fft_ifft_top__GB11 |           1|     39980|
2default:defaulth p
x
� 
a
%s
*synth2I
5|13    |fft_ifft_top__GB12 |           1|     30922|
2default:defaulth p
x
� 
a
%s
*synth2I
5|14    |fft_ifft_top__GB13 |           1|     40441|
2default:defaulth p
x
� 
a
%s
*synth2I
5|15    |datapath__42__GD   |           1|     25337|
2default:defaulth p
x
� 
a
%s
*synth2I
5|16    |fft_ifft_top__GB15 |           1|     47367|
2default:defaulth p
x
� 
a
%s
*synth2I
5|17    |logic__151__GD     |           1|     22660|
2default:defaulth p
x
� 
a
%s
*synth2I
5|18    |datapath__43__GD   |           1|     24711|
2default:defaulth p
x
� 
a
%s
*synth2I
5|19    |datapath__48__GD   |           1|     25337|
2default:defaulth p
x
� 
a
%s
*synth2I
5|20    |datapath__39__GD   |           1|     25337|
2default:defaulth p
x
� 
a
%s
*synth2I
5|21    |fft_ifft_top__GB20 |           1|     51401|
2default:defaulth p
x
� 
a
%s
*synth2I
5|22    |fft_ifft_top__GB21 |           1|      7105|
2default:defaulth p
x
� 
a
%s
*synth2I
5|23    |fft_ifft_top__GB22 |           1|     26969|
2default:defaulth p
x
� 
a
%s
*synth2I
5|24    |fft_ifft_top__GB23 |           1|     14489|
2default:defaulth p
x
� 
a
%s
*synth2I
5|25    |fft_ifft_top__GB24 |           1|      7553|
2default:defaulth p
x
� 
a
%s
*synth2I
5|26    |fft_ifft_top__GB25 |           1|     27072|
2default:defaulth p
x
� 
a
%s
*synth2I
5|27    |fft_ifft_top__GB26 |           1|      7434|
2default:defaulth p
x
� 
a
%s
*synth2I
5+------+-------------------+------------+----------+
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
F
%s
*synth2.
Start Timing Optimization
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
~Finished Timing Optimization : Time (s): cpu = 00:03:43 ; elapsed = 00:04:10 . Memory (MB): peak = 1448.781 ; gain = 1169.062
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
E
%s
*synth2-

Report RTL Partitions: 
2default:defaulth p
x
� 
a
%s
*synth2I
5+------+-------------------+------------+----------+
2default:defaulth p
x
� 
a
%s
*synth2I
5|      |RTL Partition      |Replication |Instances |
2default:defaulth p
x
� 
a
%s
*synth2I
5+------+-------------------+------------+----------+
2default:defaulth p
x
� 
a
%s
*synth2I
5|1     |fft_ifft_top__GB0  |           1|     18881|
2default:defaulth p
x
� 
a
%s
*synth2I
5|2     |fft_ifft_top__GB1  |           1|     26433|
2default:defaulth p
x
� 
a
%s
*synth2I
5|3     |fft_ifft_top__GB2  |           1|     30206|
2default:defaulth p
x
� 
a
%s
*synth2I
5|4     |fft_ifft_top__GB3  |           1|     22654|
2default:defaulth p
x
� 
a
%s
*synth2I
5|5     |logic__89__GD      |           1|     18879|
2default:defaulth p
x
� 
a
%s
*synth2I
5|6     |logic__162__GD     |           1|     22654|
2default:defaulth p
x
� 
a
%s
*synth2I
5|7     |fft_ifft_top__GB7  |           1|     47895|
2default:defaulth p
x
� 
a
%s
*synth2I
5|8     |fft_ifft_top__GB8  |           1|     12335|
2default:defaulth p
x
� 
a
%s
*synth2I
5|9     |fft_ifft_top__GB9  |           1|     42952|
2default:defaulth p
x
� 
a
%s
*synth2I
5|10    |fft_ifft_top__GB10 |           1|     24677|
2default:defaulth p
x
� 
a
%s
*synth2I
5|11    |fft_ifft_top__GB11 |           1|     20259|
2default:defaulth p
x
� 
a
%s
*synth2I
5|12    |fft_ifft_top__GB12 |           1|     30922|
2default:defaulth p
x
� 
a
%s
*synth2I
5|13    |fft_ifft_top__GB13 |           1|     40310|
2default:defaulth p
x
� 
a
%s
*synth2I
5|14    |datapath__42__GD   |           1|     25206|
2default:defaulth p
x
� 
a
%s
*synth2I
5|15    |fft_ifft_top__GB15 |           1|     31215|
2default:defaulth p
x
� 
a
%s
*synth2I
5|16    |logic__151__GD     |           1|     11332|
2default:defaulth p
x
� 
a
%s
*synth2I
5|17    |datapath__43__GD   |           1|     12335|
2default:defaulth p
x
� 
a
%s
*synth2I
5|18    |datapath__48__GD   |           1|     25206|
2default:defaulth p
x
� 
a
%s
*synth2I
5|19    |datapath__39__GD   |           1|     25206|
2default:defaulth p
x
� 
a
%s
*synth2I
5|20    |fft_ifft_top__GB20 |           1|     40619|
2default:defaulth p
x
� 
a
%s
*synth2I
5|21    |fft_ifft_top__GB21 |           1|       707|
2default:defaulth p
x
� 
a
%s
*synth2I
5|22    |fft_ifft_top__GB22 |           1|      6652|
2default:defaulth p
x
� 
a
%s
*synth2I
5|23    |fft_ifft_top__GB23 |           1|     13710|
2default:defaulth p
x
� 
a
%s
*synth2I
5|24    |fft_ifft_top__GB24 |           1|      6925|
2default:defaulth p
x
� 
a
%s
*synth2I
5|25    |fft_ifft_top__GB25 |           1|     26288|
2default:defaulth p
x
� 
a
%s
*synth2I
5|26    |fft_ifft_top__GB26 |           1|      7434|
2default:defaulth p
x
� 
a
%s
*synth2I
5+------+-------------------+------------+----------+
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
E
%s
*synth2-
Start Technology Mapping
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
{Detected registers with asynchronous reset at DSP/BRAM block boundary. Consider using synchronous reset for optimal packing4266*oasys2Z
DC:/Users/admin/Desktop/System/Study/VLSI/lab2/verilog/fft_ifft_top.v2default:default2
2532default:default8@Z8-5844h px� 
�
{Detected registers with asynchronous reset at DSP/BRAM block boundary. Consider using synchronous reset for optimal packing4266*oasys2Z
DC:/Users/admin/Desktop/System/Study/VLSI/lab2/verilog/fft_ifft_top.v2default:default2
2532default:default8@Z8-5844h px� 
�
{Detected registers with asynchronous reset at DSP/BRAM block boundary. Consider using synchronous reset for optimal packing4266*oasys2Z
DC:/Users/admin/Desktop/System/Study/VLSI/lab2/verilog/fft_ifft_top.v2default:default2
2532default:default8@Z8-5844h px� 
�
{Detected registers with asynchronous reset at DSP/BRAM block boundary. Consider using synchronous reset for optimal packing4266*oasys2Z
DC:/Users/admin/Desktop/System/Study/VLSI/lab2/verilog/fft_ifft_top.v2default:default2
2692default:default8@Z8-5844h px� 
�
{Detected registers with asynchronous reset at DSP/BRAM block boundary. Consider using synchronous reset for optimal packing4266*oasys2Z
DC:/Users/admin/Desktop/System/Study/VLSI/lab2/verilog/fft_ifft_top.v2default:default2
2692default:default8@Z8-5844h px� 
�
{Detected registers with asynchronous reset at DSP/BRAM block boundary. Consider using synchronous reset for optimal packing4266*oasys2Z
DC:/Users/admin/Desktop/System/Study/VLSI/lab2/verilog/fft_ifft_top.v2default:default2
2692default:default8@Z8-5844h px� 
�
{Detected registers with asynchronous reset at DSP/BRAM block boundary. Consider using synchronous reset for optimal packing4266*oasys2Z
DC:/Users/admin/Desktop/System/Study/VLSI/lab2/verilog/fft_ifft_top.v2default:default2
2612default:default8@Z8-5844h px� 
�
{Detected registers with asynchronous reset at DSP/BRAM block boundary. Consider using synchronous reset for optimal packing4266*oasys2Z
DC:/Users/admin/Desktop/System/Study/VLSI/lab2/verilog/fft_ifft_top.v2default:default2
2612default:default8@Z8-5844h px� 
�
{Detected registers with asynchronous reset at DSP/BRAM block boundary. Consider using synchronous reset for optimal packing4266*oasys2Z
DC:/Users/admin/Desktop/System/Study/VLSI/lab2/verilog/fft_ifft_top.v2default:default2
2612default:default8@Z8-5844h px� 
�
{Detected registers with asynchronous reset at DSP/BRAM block boundary. Consider using synchronous reset for optimal packing4266*oasys2Z
DC:/Users/admin/Desktop/System/Study/VLSI/lab2/verilog/fft_ifft_top.v2default:default2
2772default:default8@Z8-5844h px� 
�
{Detected registers with asynchronous reset at DSP/BRAM block boundary. Consider using synchronous reset for optimal packing4266*oasys2Z
DC:/Users/admin/Desktop/System/Study/VLSI/lab2/verilog/fft_ifft_top.v2default:default2
2772default:default8@Z8-5844h px� 
�
{Detected registers with asynchronous reset at DSP/BRAM block boundary. Consider using synchronous reset for optimal packing4266*oasys2Z
DC:/Users/admin/Desktop/System/Study/VLSI/lab2/verilog/fft_ifft_top.v2default:default2
2772default:default8@Z8-5844h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2
i_24/i_17382default:default2
FDCE2default:default2
i_24/i_17432default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2
i_24/i_17392default:default2
FDCE2default:default2
i_24/i_17432default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2
i_24/i_17412default:default2
FDCE2default:default2
i_24/i_17432default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2
i_24/i_17422default:default2
FDCE2default:default2
i_24/i_17432default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2
i_24/i_17322default:default2
FDCE2default:default2
i_24/i_17432default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2
i_24/i_17332default:default2
FDCE2default:default2
i_24/i_17432default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2
i_24/i_17352default:default2
FDCE2default:default2
i_24/i_17432default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2
i_24/i_17362default:default2
FDCE2default:default2
i_24/i_17432default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2
i_24/i_17402default:default2
FDCE2default:default2
i_24/i_17432default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2
i_24/i_17432default:default2
FDCE2default:default2
i_24/i_17372default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2
i_24/i_17342default:default2
FDCE2default:default2
i_24/i_17372default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2%
i_24/re1_o_reg[0]2default:default2
FDCE2default:default2%
i_24/re2_o_reg[0]2default:defaultZ8-3886h px� 
�
{Detected registers with asynchronous reset at DSP/BRAM block boundary. Consider using synchronous reset for optimal packing4266*oasys2Z
DC:/Users/admin/Desktop/System/Study/VLSI/lab2/verilog/fft_ifft_top.v2default:default2
1422default:default8@Z8-5844h px� 
�
{Detected registers with asynchronous reset at DSP/BRAM block boundary. Consider using synchronous reset for optimal packing4266*oasys2Z
DC:/Users/admin/Desktop/System/Study/VLSI/lab2/verilog/fft_ifft_top.v2default:default2
1422default:default8@Z8-5844h px� 
�
{Detected registers with asynchronous reset at DSP/BRAM block boundary. Consider using synchronous reset for optimal packing4266*oasys2Z
DC:/Users/admin/Desktop/System/Study/VLSI/lab2/verilog/fft_ifft_top.v2default:default2
1422default:default8@Z8-5844h px� 
�
{Detected registers with asynchronous reset at DSP/BRAM block boundary. Consider using synchronous reset for optimal packing4266*oasys2Z
DC:/Users/admin/Desktop/System/Study/VLSI/lab2/verilog/fft_ifft_top.v2default:default2
1422default:default8@Z8-5844h px� 
�
{Detected registers with asynchronous reset at DSP/BRAM block boundary. Consider using synchronous reset for optimal packing4266*oasys2Z
DC:/Users/admin/Desktop/System/Study/VLSI/lab2/verilog/fft_ifft_top.v2default:default2
1422default:default8@Z8-5844h px� 
�
{Detected registers with asynchronous reset at DSP/BRAM block boundary. Consider using synchronous reset for optimal packing4266*oasys2Z
DC:/Users/admin/Desktop/System/Study/VLSI/lab2/verilog/fft_ifft_top.v2default:default2
1422default:default8@Z8-5844h px� 
�
{Detected registers with asynchronous reset at DSP/BRAM block boundary. Consider using synchronous reset for optimal packing4266*oasys2Z
DC:/Users/admin/Desktop/System/Study/VLSI/lab2/verilog/fft_ifft_top.v2default:default2
1422default:default8@Z8-5844h px� 
�
{Detected registers with asynchronous reset at DSP/BRAM block boundary. Consider using synchronous reset for optimal packing4266*oasys2Z
DC:/Users/admin/Desktop/System/Study/VLSI/lab2/verilog/fft_ifft_top.v2default:default2
1422default:default8@Z8-5844h px� 
�
{Detected registers with asynchronous reset at DSP/BRAM block boundary. Consider using synchronous reset for optimal packing4266*oasys2Z
DC:/Users/admin/Desktop/System/Study/VLSI/lab2/verilog/fft_ifft_top.v2default:default2
1422default:default8@Z8-5844h px� 
�
{Detected registers with asynchronous reset at DSP/BRAM block boundary. Consider using synchronous reset for optimal packing4266*oasys2Z
DC:/Users/admin/Desktop/System/Study/VLSI/lab2/verilog/fft_ifft_top.v2default:default2
1422default:default8@Z8-5844h px� 
�
{Detected registers with asynchronous reset at DSP/BRAM block boundary. Consider using synchronous reset for optimal packing4266*oasys2Z
DC:/Users/admin/Desktop/System/Study/VLSI/lab2/verilog/fft_ifft_top.v2default:default2
1422default:default8@Z8-5844h px� 
�
{Detected registers with asynchronous reset at DSP/BRAM block boundary. Consider using synchronous reset for optimal packing4266*oasys2Z
DC:/Users/admin/Desktop/System/Study/VLSI/lab2/verilog/fft_ifft_top.v2default:default2
1422default:default8@Z8-5844h px� 
�
{Detected registers with asynchronous reset at DSP/BRAM block boundary. Consider using synchronous reset for optimal packing4266*oasys2Z
DC:/Users/admin/Desktop/System/Study/VLSI/lab2/verilog/fft_ifft_top.v2default:default2
1422default:default8@Z8-5844h px� 
�
{Detected registers with asynchronous reset at DSP/BRAM block boundary. Consider using synchronous reset for optimal packing4266*oasys2Z
DC:/Users/admin/Desktop/System/Study/VLSI/lab2/verilog/fft_ifft_top.v2default:default2
1422default:default8@Z8-5844h px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
}Finished Technology Mapping : Time (s): cpu = 00:04:54 ; elapsed = 00:05:21 . Memory (MB): peak = 1482.551 ; gain = 1202.832
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
E
%s
*synth2-

Report RTL Partitions: 
2default:defaulth p
x
� 
a
%s
*synth2I
5+------+-------------------+------------+----------+
2default:defaulth p
x
� 
a
%s
*synth2I
5|      |RTL Partition      |Replication |Instances |
2default:defaulth p
x
� 
a
%s
*synth2I
5+------+-------------------+------------+----------+
2default:defaulth p
x
� 
a
%s
*synth2I
5|1     |fft_ifft_top__GB0  |           1|     18881|
2default:defaulth p
x
� 
a
%s
*synth2I
5|2     |fft_ifft_top__GB1  |           1|     15105|
2default:defaulth p
x
� 
a
%s
*synth2I
5|3     |fft_ifft_top__GB2  |           1|     22654|
2default:defaulth p
x
� 
a
%s
*synth2I
5|4     |fft_ifft_top__GB3  |           1|      7552|
2default:defaulth p
x
� 
a
%s
*synth2I
5|5     |logic__89__GD      |           1|      7551|
2default:defaulth p
x
� 
a
%s
*synth2I
5|6     |logic__162__GD     |           1|      7551|
2default:defaulth p
x
� 
a
%s
*synth2I
5|7     |fft_ifft_top__GB7  |           1|     19454|
2default:defaulth p
x
� 
a
%s
*synth2I
5|8     |fft_ifft_top__GB8  |           1|      4642|
2default:defaulth p
x
� 
a
%s
*synth2I
5|9     |fft_ifft_top__GB9  |           1|     10436|
2default:defaulth p
x
� 
a
%s
*synth2I
5|10    |fft_ifft_top__GB10 |           1|      8710|
2default:defaulth p
x
� 
a
%s
*synth2I
5|11    |fft_ifft_top__GB11 |           1|     12445|
2default:defaulth p
x
� 
a
%s
*synth2I
5|12    |fft_ifft_top__GB12 |           1|     14566|
2default:defaulth p
x
� 
a
%s
*synth2I
5|13    |fft_ifft_top__GB13 |           1|     11330|
2default:defaulth p
x
� 
a
%s
*synth2I
5|14    |datapath__42__GD   |           1|     10998|
2default:defaulth p
x
� 
a
%s
*synth2I
5|15    |fft_ifft_top__GB15 |           1|     16525|
2default:defaulth p
x
� 
a
%s
*synth2I
5|16    |logic__151__GD     |           1|      3777|
2default:defaulth p
x
� 
a
%s
*synth2I
5|17    |datapath__43__GD   |           1|      4642|
2default:defaulth p
x
� 
a
%s
*synth2I
5|18    |datapath__48__GD   |           1|     10998|
2default:defaulth p
x
� 
a
%s
*synth2I
5|19    |datapath__39__GD   |           1|     10998|
2default:defaulth p
x
� 
a
%s
*synth2I
5|20    |fft_ifft_top__GB20 |           1|     10062|
2default:defaulth p
x
� 
a
%s
*synth2I
5|21    |fft_ifft_top__GB21 |           1|       400|
2default:defaulth p
x
� 
a
%s
*synth2I
5|22    |fft_ifft_top__GB22 |           1|      3158|
2default:defaulth p
x
� 
a
%s
*synth2I
5|23    |fft_ifft_top__GB23 |           1|      6701|
2default:defaulth p
x
� 
a
%s
*synth2I
5|24    |fft_ifft_top__GB24 |           1|      2327|
2default:defaulth p
x
� 
a
%s
*synth2I
5|25    |fft_ifft_top__GB25 |           1|     11628|
2default:defaulth p
x
� 
a
%s
*synth2I
5|26    |fft_ifft_top__GB26 |           1|      3422|
2default:defaulth p
x
� 
a
%s
*synth2I
5+------+-------------------+------------+----------+
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
?
%s
*synth2'
Start IO Insertion
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
Q
%s
*synth29
%Start Flattening Before IO Insertion
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
T
%s
*synth2<
(Finished Flattening Before IO Insertion
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
H
%s
*synth20
Start Final Netlist Cleanup
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
{Detected registers with asynchronous reset at DSP/BRAM block boundary. Consider using synchronous reset for optimal packing4266*oasys2Z
DC:/Users/admin/Desktop/System/Study/VLSI/lab2/verilog/fft_ifft_top.v2default:default2
2182default:default8@Z8-5844h px� 
�
{Detected registers with asynchronous reset at DSP/BRAM block boundary. Consider using synchronous reset for optimal packing4266*oasys2Z
DC:/Users/admin/Desktop/System/Study/VLSI/lab2/verilog/fft_ifft_top.v2default:default2
2182default:default8@Z8-5844h px� 
�
{Detected registers with asynchronous reset at DSP/BRAM block boundary. Consider using synchronous reset for optimal packing4266*oasys2Z
DC:/Users/admin/Desktop/System/Study/VLSI/lab2/verilog/fft_ifft_top.v2default:default2
2182default:default8@Z8-5844h px� 
�
{Detected registers with asynchronous reset at DSP/BRAM block boundary. Consider using synchronous reset for optimal packing4266*oasys2Z
DC:/Users/admin/Desktop/System/Study/VLSI/lab2/verilog/fft_ifft_top.v2default:default2
2182default:default8@Z8-5844h px� 
�
{Detected registers with asynchronous reset at DSP/BRAM block boundary. Consider using synchronous reset for optimal packing4266*oasys2Z
DC:/Users/admin/Desktop/System/Study/VLSI/lab2/verilog/fft_ifft_top.v2default:default2
2182default:default8@Z8-5844h px� 
�
{Detected registers with asynchronous reset at DSP/BRAM block boundary. Consider using synchronous reset for optimal packing4266*oasys2Z
DC:/Users/admin/Desktop/System/Study/VLSI/lab2/verilog/fft_ifft_top.v2default:default2
2182default:default8@Z8-5844h px� 
�
{Detected registers with asynchronous reset at DSP/BRAM block boundary. Consider using synchronous reset for optimal packing4266*oasys2Z
DC:/Users/admin/Desktop/System/Study/VLSI/lab2/verilog/fft_ifft_top.v2default:default2
2182default:default8@Z8-5844h px� 
�
{Detected registers with asynchronous reset at DSP/BRAM block boundary. Consider using synchronous reset for optimal packing4266*oasys2Z
DC:/Users/admin/Desktop/System/Study/VLSI/lab2/verilog/fft_ifft_top.v2default:default2
2262default:default8@Z8-5844h px� 
�
{Detected registers with asynchronous reset at DSP/BRAM block boundary. Consider using synchronous reset for optimal packing4266*oasys2Z
DC:/Users/admin/Desktop/System/Study/VLSI/lab2/verilog/fft_ifft_top.v2default:default2
1422default:default8@Z8-5844h px� 
�
{Detected registers with asynchronous reset at DSP/BRAM block boundary. Consider using synchronous reset for optimal packing4266*oasys2Z
DC:/Users/admin/Desktop/System/Study/VLSI/lab2/verilog/fft_ifft_top.v2default:default2
2262default:default8@Z8-5844h px� 
�
{Detected registers with asynchronous reset at DSP/BRAM block boundary. Consider using synchronous reset for optimal packing4266*oasys2Z
DC:/Users/admin/Desktop/System/Study/VLSI/lab2/verilog/fft_ifft_top.v2default:default2
1422default:default8@Z8-5844h px� 
�
{Detected registers with asynchronous reset at DSP/BRAM block boundary. Consider using synchronous reset for optimal packing4266*oasys2Z
DC:/Users/admin/Desktop/System/Study/VLSI/lab2/verilog/fft_ifft_top.v2default:default2
2262default:default8@Z8-5844h px� 
�
{Detected registers with asynchronous reset at DSP/BRAM block boundary. Consider using synchronous reset for optimal packing4266*oasys2Z
DC:/Users/admin/Desktop/System/Study/VLSI/lab2/verilog/fft_ifft_top.v2default:default2
1422default:default8@Z8-5844h px� 
�
{Detected registers with asynchronous reset at DSP/BRAM block boundary. Consider using synchronous reset for optimal packing4266*oasys2Z
DC:/Users/admin/Desktop/System/Study/VLSI/lab2/verilog/fft_ifft_top.v2default:default2
2262default:default8@Z8-5844h px� 
�
{Detected registers with asynchronous reset at DSP/BRAM block boundary. Consider using synchronous reset for optimal packing4266*oasys2Z
DC:/Users/admin/Desktop/System/Study/VLSI/lab2/verilog/fft_ifft_top.v2default:default2
1422default:default8@Z8-5844h px� 
�
{Detected registers with asynchronous reset at DSP/BRAM block boundary. Consider using synchronous reset for optimal packing4266*oasys2Z
DC:/Users/admin/Desktop/System/Study/VLSI/lab2/verilog/fft_ifft_top.v2default:default2
2262default:default8@Z8-5844h px� 
�
{Detected registers with asynchronous reset at DSP/BRAM block boundary. Consider using synchronous reset for optimal packing4266*oasys2Z
DC:/Users/admin/Desktop/System/Study/VLSI/lab2/verilog/fft_ifft_top.v2default:default2
1422default:default8@Z8-5844h px� 
�
{Detected registers with asynchronous reset at DSP/BRAM block boundary. Consider using synchronous reset for optimal packing4266*oasys2Z
DC:/Users/admin/Desktop/System/Study/VLSI/lab2/verilog/fft_ifft_top.v2default:default2
2262default:default8@Z8-5844h px� 
�
{Detected registers with asynchronous reset at DSP/BRAM block boundary. Consider using synchronous reset for optimal packing4266*oasys2Z
DC:/Users/admin/Desktop/System/Study/VLSI/lab2/verilog/fft_ifft_top.v2default:default2
1422default:default8@Z8-5844h px� 
�
{Detected registers with asynchronous reset at DSP/BRAM block boundary. Consider using synchronous reset for optimal packing4266*oasys2Z
DC:/Users/admin/Desktop/System/Study/VLSI/lab2/verilog/fft_ifft_top.v2default:default2
2262default:default8@Z8-5844h px� 
�
{Detected registers with asynchronous reset at DSP/BRAM block boundary. Consider using synchronous reset for optimal packing4266*oasys2Z
DC:/Users/admin/Desktop/System/Study/VLSI/lab2/verilog/fft_ifft_top.v2default:default2
1422default:default8@Z8-5844h px� 
�
{Detected registers with asynchronous reset at DSP/BRAM block boundary. Consider using synchronous reset for optimal packing4266*oasys2Z
DC:/Users/admin/Desktop/System/Study/VLSI/lab2/verilog/fft_ifft_top.v2default:default2
2182default:default8@Z8-5844h px� 
�
{Detected registers with asynchronous reset at DSP/BRAM block boundary. Consider using synchronous reset for optimal packing4266*oasys2Z
DC:/Users/admin/Desktop/System/Study/VLSI/lab2/verilog/fft_ifft_top.v2default:default2
1422default:default8@Z8-5844h px� 
�
{Detected registers with asynchronous reset at DSP/BRAM block boundary. Consider using synchronous reset for optimal packing4266*oasys2Z
DC:/Users/admin/Desktop/System/Study/VLSI/lab2/verilog/fft_ifft_top.v2default:default2
2182default:default8@Z8-5844h px� 
�
{Detected registers with asynchronous reset at DSP/BRAM block boundary. Consider using synchronous reset for optimal packing4266*oasys2Z
DC:/Users/admin/Desktop/System/Study/VLSI/lab2/verilog/fft_ifft_top.v2default:default2
1422default:default8@Z8-5844h px� 
�
{Detected registers with asynchronous reset at DSP/BRAM block boundary. Consider using synchronous reset for optimal packing4266*oasys2Z
DC:/Users/admin/Desktop/System/Study/VLSI/lab2/verilog/fft_ifft_top.v2default:default2
2182default:default8@Z8-5844h px� 
�
{Detected registers with asynchronous reset at DSP/BRAM block boundary. Consider using synchronous reset for optimal packing4266*oasys2Z
DC:/Users/admin/Desktop/System/Study/VLSI/lab2/verilog/fft_ifft_top.v2default:default2
1422default:default8@Z8-5844h px� 
�
{Detected registers with asynchronous reset at DSP/BRAM block boundary. Consider using synchronous reset for optimal packing4266*oasys2Z
DC:/Users/admin/Desktop/System/Study/VLSI/lab2/verilog/fft_ifft_top.v2default:default2
2182default:default8@Z8-5844h px� 
�
{Detected registers with asynchronous reset at DSP/BRAM block boundary. Consider using synchronous reset for optimal packing4266*oasys2Z
DC:/Users/admin/Desktop/System/Study/VLSI/lab2/verilog/fft_ifft_top.v2default:default2
1422default:default8@Z8-5844h px� 
�
{Detected registers with asynchronous reset at DSP/BRAM block boundary. Consider using synchronous reset for optimal packing4266*oasys2Z
DC:/Users/admin/Desktop/System/Study/VLSI/lab2/verilog/fft_ifft_top.v2default:default2
2182default:default8@Z8-5844h px� 
�
{Detected registers with asynchronous reset at DSP/BRAM block boundary. Consider using synchronous reset for optimal packing4266*oasys2Z
DC:/Users/admin/Desktop/System/Study/VLSI/lab2/verilog/fft_ifft_top.v2default:default2
1422default:default8@Z8-5844h px� 
�
{Detected registers with asynchronous reset at DSP/BRAM block boundary. Consider using synchronous reset for optimal packing4266*oasys2Z
DC:/Users/admin/Desktop/System/Study/VLSI/lab2/verilog/fft_ifft_top.v2default:default2
2182default:default8@Z8-5844h px� 
�
{Detected registers with asynchronous reset at DSP/BRAM block boundary. Consider using synchronous reset for optimal packing4266*oasys2Z
DC:/Users/admin/Desktop/System/Study/VLSI/lab2/verilog/fft_ifft_top.v2default:default2
1422default:default8@Z8-5844h px� 
�
{Detected registers with asynchronous reset at DSP/BRAM block boundary. Consider using synchronous reset for optimal packing4266*oasys2Z
DC:/Users/admin/Desktop/System/Study/VLSI/lab2/verilog/fft_ifft_top.v2default:default2
2182default:default8@Z8-5844h px� 
�
{Detected registers with asynchronous reset at DSP/BRAM block boundary. Consider using synchronous reset for optimal packing4266*oasys2Z
DC:/Users/admin/Desktop/System/Study/VLSI/lab2/verilog/fft_ifft_top.v2default:default2
1422default:default8@Z8-5844h px� 
�
{Detected registers with asynchronous reset at DSP/BRAM block boundary. Consider using synchronous reset for optimal packing4266*oasys2Z
DC:/Users/admin/Desktop/System/Study/VLSI/lab2/verilog/fft_ifft_top.v2default:default2
2262default:default8@Z8-5844h px� 
�
{Detected registers with asynchronous reset at DSP/BRAM block boundary. Consider using synchronous reset for optimal packing4266*oasys2Z
DC:/Users/admin/Desktop/System/Study/VLSI/lab2/verilog/fft_ifft_top.v2default:default2
2262default:default8@Z8-5844h px� 
�
{Detected registers with asynchronous reset at DSP/BRAM block boundary. Consider using synchronous reset for optimal packing4266*oasys2Z
DC:/Users/admin/Desktop/System/Study/VLSI/lab2/verilog/fft_ifft_top.v2default:default2
2262default:default8@Z8-5844h px� 
�
{Detected registers with asynchronous reset at DSP/BRAM block boundary. Consider using synchronous reset for optimal packing4266*oasys2Z
DC:/Users/admin/Desktop/System/Study/VLSI/lab2/verilog/fft_ifft_top.v2default:default2
2262default:default8@Z8-5844h px� 
�
{Detected registers with asynchronous reset at DSP/BRAM block boundary. Consider using synchronous reset for optimal packing4266*oasys2Z
DC:/Users/admin/Desktop/System/Study/VLSI/lab2/verilog/fft_ifft_top.v2default:default2
2262default:default8@Z8-5844h px� 
�
{Detected registers with asynchronous reset at DSP/BRAM block boundary. Consider using synchronous reset for optimal packing4266*oasys2Z
DC:/Users/admin/Desktop/System/Study/VLSI/lab2/verilog/fft_ifft_top.v2default:default2
2262default:default8@Z8-5844h px� 
�
{Detected registers with asynchronous reset at DSP/BRAM block boundary. Consider using synchronous reset for optimal packing4266*oasys2Z
DC:/Users/admin/Desktop/System/Study/VLSI/lab2/verilog/fft_ifft_top.v2default:default2
2262default:default8@Z8-5844h px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
K
%s
*synth23
Finished Final Netlist Cleanup
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
wFinished IO Insertion : Time (s): cpu = 00:05:25 ; elapsed = 00:05:55 . Memory (MB): peak = 1482.551 ; gain = 1202.832
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
D
%s
*synth2,

Report Check Netlist: 
2default:defaulth p
x
� 
u
%s
*synth2]
I+------+------------------+-------+---------+-------+------------------+
2default:defaulth p
x
� 
u
%s
*synth2]
I|      |Item              |Errors |Warnings |Status |Description       |
2default:defaulth p
x
� 
u
%s
*synth2]
I+------+------------------+-------+---------+-------+------------------+
2default:defaulth p
x
� 
u
%s
*synth2]
I|1     |multi_driven_nets |      0|        0|Passed |Multi driven nets |
2default:defaulth p
x
� 
u
%s
*synth2]
I+------+------------------+-------+---------+-------+------------------+
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
O
%s
*synth27
#Start Renaming Generated Instances
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Renaming Generated Instances : Time (s): cpu = 00:05:27 ; elapsed = 00:05:57 . Memory (MB): peak = 1482.551 ; gain = 1202.832
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
E
%s
*synth2-

Report RTL Partitions: 
2default:defaulth p
x
� 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
� 
W
%s
*synth2?
+| |RTL Partition |Replication |Instances |
2default:defaulth p
x
� 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
� 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
L
%s
*synth24
 Start Rebuilding User Hierarchy
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Rebuilding User Hierarchy : Time (s): cpu = 00:05:31 ; elapsed = 00:06:01 . Memory (MB): peak = 1482.551 ; gain = 1202.832
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
K
%s
*synth23
Start Renaming Generated Ports
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Renaming Generated Ports : Time (s): cpu = 00:05:31 ; elapsed = 00:06:01 . Memory (MB): peak = 1482.551 ; gain = 1202.832
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
M
%s
*synth25
!Start Handling Custom Attributes
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Handling Custom Attributes : Time (s): cpu = 00:33:03 ; elapsed = 00:33:34 . Memory (MB): peak = 1482.551 ; gain = 1202.832
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
J
%s
*synth22
Start Renaming Generated Nets
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Renaming Generated Nets : Time (s): cpu = 00:33:04 ; elapsed = 00:33:35 . Memory (MB): peak = 1482.551 ; gain = 1202.832
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
K
%s
*synth23
Start Writing Synthesis Report
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
A
%s
*synth2)

Report BlackBoxes: 
2default:defaulth p
x
� 
J
%s
*synth22
+-+--------------+----------+
2default:defaulth p
x
� 
J
%s
*synth22
| |BlackBox name |Instances |
2default:defaulth p
x
� 
J
%s
*synth22
+-+--------------+----------+
2default:defaulth p
x
� 
J
%s
*synth22
+-+--------------+----------+
2default:defaulth p
x
� 
A
%s*synth2)

Report Cell Usage: 
2default:defaulth px� 
E
%s*synth2-
+------+--------+------+
2default:defaulth px� 
E
%s*synth2-
|      |Cell    |Count |
2default:defaulth px� 
E
%s*synth2-
+------+--------+------+
2default:defaulth px� 
E
%s*synth2-
|1     |BUFG    |     1|
2default:defaulth px� 
E
%s*synth2-
|2     |CARRY4  |   284|
2default:defaulth px� 
E
%s*synth2-
|3     |DSP48E1 |    28|
2default:defaulth px� 
E
%s*synth2-
|4     |LUT1    |   107|
2default:defaulth px� 
E
%s*synth2-
|5     |LUT2    |  9660|
2default:defaulth px� 
E
%s*synth2-
|6     |LUT3    | 30400|
2default:defaulth px� 
E
%s*synth2-
|7     |LUT4    |  9338|
2default:defaulth px� 
E
%s*synth2-
|8     |LUT5    | 43139|
2default:defaulth px� 
E
%s*synth2-
|9     |LUT6    | 91712|
2default:defaulth px� 
E
%s*synth2-
|10    |MUXF7   | 16907|
2default:defaulth px� 
E
%s*synth2-
|11    |MUXF8   |  1668|
2default:defaulth px� 
E
%s*synth2-
|12    |FDCE    | 18681|
2default:defaulth px� 
E
%s*synth2-
|13    |IBUF    |  2052|
2default:defaulth px� 
E
%s*synth2-
|14    |OBUF    |  2049|
2default:defaulth px� 
E
%s*synth2-
+------+--------+------+
2default:defaulth px� 
E
%s
*synth2-

Report Instance Areas: 
2default:defaulth p
x
� 
O
%s
*synth27
#+------+---------+-------+-------+
2default:defaulth p
x
� 
O
%s
*synth27
#|      |Instance |Module |Cells  |
2default:defaulth p
x
� 
O
%s
*synth27
#+------+---------+-------+-------+
2default:defaulth p
x
� 
O
%s
*synth27
#|1     |top      |       | 226026|
2default:defaulth p
x
� 
O
%s
*synth27
#+------+---------+-------+-------+
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Writing Synthesis Report : Time (s): cpu = 00:33:04 ; elapsed = 00:33:35 . Memory (MB): peak = 1482.551 ; gain = 1202.832
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
t
%s
*synth2\
HSynthesis finished with 0 errors, 0 critical warnings and 105 warnings.
2default:defaulth p
x
� 
�
%s
*synth2�
�Synthesis Optimization Runtime : Time (s): cpu = 00:33:04 ; elapsed = 00:33:36 . Memory (MB): peak = 1482.551 ; gain = 1202.832
2default:defaulth p
x
� 
�
%s
*synth2�
�Synthesis Optimization Complete : Time (s): cpu = 00:33:04 ; elapsed = 00:33:36 . Memory (MB): peak = 1482.551 ; gain = 1202.832
2default:defaulth p
x
� 
B
 Translating synthesized netlist
350*projectZ1-571h px� 
i
-Analyzing %s Unisim elements for replacement
17*netlist2
209392default:defaultZ29-17h px� 
j
2Unisim Transformation completed in %s CPU seconds
28*netlist2
12default:defaultZ29-28h px� 
�
�Netlist '%s' is not ideal for floorplanning, since the cellview '%s' contains a large number of primitives.  Please consider enabling hierarchy in synthesis if you want to do floorplanning.
310*netlist2 
fft_ifft_top2default:default2 
fft_ifft_top2default:defaultZ29-101h px� 
K
)Preparing netlist for logic optimization
349*projectZ1-570h px� 
u
)Pushed %s inverter(s) to %s load pin(s).
98*opt2
02default:default2
02default:defaultZ31-138h px� 
~
!Unisim Transformation Summary:
%s111*project29
%No Unisim elements were transformed.
2default:defaultZ1-111h px� 
U
Releasing license: %s
83*common2
	Synthesis2default:defaultZ17-83h px� 
�
G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
1322default:default2
1062default:default2
02default:default2
02default:defaultZ4-41h px� 
^
%s completed successfully
29*	vivadotcl2 
synth_design2default:defaultZ4-42h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2"
synth_design: 2default:default2
00:33:512default:default2
00:34:312default:default2
1643.4922default:default2
1377.1052default:defaultZ17-268h px� 
�
 The %s '%s' has been generated.
621*common2

checkpoint2default:default2p
\C:/Users/admin/Desktop/System/Study/VLSI/lab2/vivado/lab2/lab2.runs/synth_1/fft_ifft_top.dcp2default:defaultZ17-1381h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2&
write_checkpoint: 2default:default2
00:00:252default:default2
00:00:172default:default2
1658.5592default:default2
15.0662default:defaultZ17-268h px� 
�
%s4*runtcl2�
nExecuting : report_utilization -file fft_ifft_top_utilization_synth.rpt -pb fft_ifft_top_utilization_synth.pb
2default:defaulth px� 
�
preport_utilization: Time (s): cpu = 00:00:02 ; elapsed = 00:00:02 . Memory (MB): peak = 1658.559 ; gain = 0.000
*commonh px� 
�
Exiting %s at %s...
206*common2
Vivado2default:default2,
Mon May 15 15:28:58 20232default:defaultZ17-206h px� 


End Record