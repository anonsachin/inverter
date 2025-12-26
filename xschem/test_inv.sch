v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
B 2 200 -320 1000 80 {flags=graph
y1=-0.0050824659
y2=2.3257896
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=0
x2=3e-07
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
node="inp
pin_out
out_1
out_parax
pin_out_parax"
color="4 18 17 20 21"
dataset=-1
unitx=1
logx=0
logy=0
}
N 280 -430 300 -430 {lab=out_1}
N 270 -430 280 -430 {lab=out_1}
N 550 -430 580 -430 {lab=out_1}
N 580 -430 600 -430 {lab=out_1}
N 660 -430 710 -430 {lab=pin_out}
N 580 -360 600 -360 {lab=GND}
N 580 -370 580 -360 {lab=GND}
N 300 -430 550 -430 {lab=out_1}
N 280 -690 300 -690 {lab=out_parax}
N 270 -690 280 -690 {lab=out_parax}
N 550 -690 580 -690 {lab=out_parax}
N 580 -690 600 -690 {lab=out_parax}
N 660 -690 710 -690 {lab=pin_out_parax}
N 580 -620 600 -620 {lab=GND}
N 580 -630 580 -620 {lab=GND}
N 300 -690 550 -690 {lab=out_parax}
C {devices/code.sym} -270 -140 0 0 {name=TT_MODELS
only_toplevel=true
format="tcleval( @value )"
value="
** opencircuitdesign pdks install
.lib $::SKYWATER_MODELS/sky130.lib.spice tt
"
spice_ignore=false}
C {devices/launcher.sym} -220 80 0 0 {name=h17 
descr="Load waves" 
tclcommand="
xschem raw_read $netlist_dir/[file tail [file rootname [xschem get current_name]]].raw tran
"
}
C {Inverter.sym} 160 -430 0 0 {name=x1}
C {simulator_commands_shown.sym} -490 -390 0 0 {name=COMMANDS
simulator=ngspice
only_toplevel=false 
value="
* ngspice commands
Vvcc VCC 0 DC 1.8
Vvss VSS 0 DC 0
Vin Inp 0 PWL(0ns 0V 10ns 0.8V 12ns 1.3V 14ns 1.8V 110ns 1.8V 120ns 1.3V 122ns 0.8V 124ns 0V)
.control
save all
tran 100p 300n
write test_inv.raw
.endc
"}
C {res.sym} 630 -430 1 0 {name=R1
value=1k
footprint=1206
device=resistor
m=1}
C {capa.sym} 580 -400 0 0 {name=C1
m=1
value=1p
footprint=1206
device="ceramic capacitor"}
C {opin.sym} 710 -430 0 0 {name=p2 lab=pin_out}
C {gnd.sym} 600 -360 0 0 {name=l1 lab=GND}
C {lab_pin.sym} 280 -430 0 0 {name=p1 sig_type=std_logic lab=out_1
}
C {lab_pin.sym} 120 -370 0 0 {name=p5 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 120 -500 0 0 {name=p7 sig_type=std_logic lab=VCC}
C {lab_pin.sym} 20 -430 0 0 {name=p9 sig_type=std_logic lab=Inp}
C {lab_pin.sym} 400 -500 0 0 {name=p10 sig_type=std_logic lab=VCC}
C {lab_pin.sym} 400 -370 0 0 {name=p11 sig_type=std_logic lab=VSS}
C {Inverter.sym} 160 -690 0 0 {schematic=inverter_parax.sim

spice_sym_def="tcleval(.include [file normalize ../mag/Inverter.sim.spice])"

tclcommand="textwindow [file normalize ../mag/Inverter.sim.spice]"
}
C {res.sym} 630 -690 1 0 {name=R2
value=1k
footprint=1206
device=resistor
m=1}
C {capa.sym} 580 -660 0 0 {name=C2
m=1
value=1p
footprint=1206
device="ceramic capacitor"}
C {opin.sym} 710 -690 0 0 {name=p3 lab=pin_out_parax}
C {gnd.sym} 600 -620 0 0 {name=l2 lab=GND}
C {lab_pin.sym} 280 -690 0 0 {name=p4 sig_type=std_logic lab=out_parax
}
C {lab_pin.sym} 120 -630 0 0 {name=p6 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 120 -760 0 0 {name=p8 sig_type=std_logic lab=VCC}
C {lab_pin.sym} 20 -690 0 0 {name=p12 sig_type=std_logic lab=Inp}
C {lab_pin.sym} 400 -760 0 0 {name=p13 sig_type=std_logic lab=VCC}
C {lab_pin.sym} 400 -630 0 0 {name=p14 sig_type=std_logic lab=VSS}
