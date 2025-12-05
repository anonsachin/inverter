v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 150 -10 150 20 {lab=Out}
N 150 -40 190 -40 {lab=VCC}
N 190 -80 190 -40 {lab=VCC}
N 150 -80 190 -80 {lab=VCC}
N 150 -80 150 -70 {lab=VCC}
N 150 50 190 50 {lab=VSS}
N 190 50 190 90 {lab=VSS}
N 150 90 190 90 {lab=VSS}
N 150 80 150 90 {lab=VSS}
N 110 -40 110 50 {lab=Inp}
N 150 0 220 0 {lab=Out}
N 60 -0 110 0 {lab=Inp}
N 150 -110 150 -80 {lab=VCC}
N 150 90 150 120 {lab=VSS}
N 50 -0 60 -0 {lab=Inp}
N 20 -0 50 -0 {lab=Inp}
N 10 -0 20 -0 {lab=Inp}
C {iopin.sym} 10 0 2 0 {name=p1 lab=Inp}
C {iopin.sym} 150 120 0 0 {name=p2 lab=VSS}
C {iopin.sym} 220 0 0 0 {name=p3 lab=Out}
C {iopin.sym} 150 -110 0 0 {name=p4 lab=VCC
}
C {/foss/pdks/sky130A/libs.tech/xschem/sky130_fd_pr/pfet_01v8.sym} 130 -40 0 0 {name=M2
W=2
L=0.15
nf=1
mult=1
ad="expr('int((@nf + 1)/2) * @W / @nf * 0.29')"
pd="expr('2*int((@nf + 1)/2) * (@W / @nf + 0.29)')"
as="expr('int((@nf + 2)/2) * @W / @nf * 0.29')"
ps="expr('2*int((@nf + 2)/2) * (@W / @nf + 0.29)')"
nrd="expr('0.29 / @W ')" nrs="expr('0.29 / @W ')"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {/foss/pdks/sky130A/libs.tech/xschem/sky130_fd_pr/nfet_01v8.sym} 130 50 0 0 {name=M3
W=1
L=0.15
nf=1 
mult=1
ad="expr('int((@nf + 1)/2) * @W / @nf * 0.29')"
pd="expr('2*int((@nf + 1)/2) * (@W / @nf + 0.29)')"
as="expr('int((@nf + 2)/2) * @W / @nf * 0.29')"
ps="expr('2*int((@nf + 2)/2) * (@W / @nf + 0.29)')"
nrd="expr('0.29 / @W ')" nrs="expr('0.29 / @W ')"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
