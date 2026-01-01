v {xschem version=3.4.8RC file_version=1.2}
G {}
K {}
V {}
S {}
F {}
E {}
N 10 -90 10 -60 {lab=#net1}
N 120 -90 120 -60 {lab=#net2}
N 10 -0 10 40 {lab=#net3}
N -170 160 -170 190 {lab=#net4}
N -230 220 -210 220 {lab=#net4}
N -230 180 -230 220 {lab=#net4}
N -230 180 -170 180 {lab=#net4}
N -230 130 -210 130 {lab=#net5}
N -230 100 -230 130 {lab=#net5}
N -230 100 -170 100 {lab=#net5}
N -60 70 -30 70 {lab=#net3}
N -60 30 -60 70 {lab=#net3}
N -60 30 10 30 {lab=#net3}
N -250 10 -250 40 {lab=#net5}
N -250 40 -170 40 {lab=#net5}
N -170 40 -170 100 {lab=#net5}
N -210 -20 -160 -20 {lab=#net2}
N -250 -100 -250 -50 {lab=#net6}
N -250 -100 -230 -100 {lab=#net6}
N -190 -130 -120 -130 {lab=#net2}
N -120 -130 -120 -50 {lab=#net2}
N 50 -30 80 -30 {lab=#net7}
N 50 -120 80 -120 {lab=#net2}
N -120 10 70 10 {lab=#net7}
N 70 -30 70 10 {lab=#net7}
N -180 -70 -180 -20 {lab=#net2}
N 70 -120 70 -70 {lab=#net2}
N -230 -160 -20 -160 {lab=VDD}
N -20 -160 -20 -150 {lab=VDD}
N -20 -150 10 -150 {lab=VDD}
N 10 -150 120 -150 {lab=VDD}
N 120 0 120 70 {lab=#net8}
N 120 -150 300 -150 {lab=VDD}
N 300 -90 300 -40 {lab=Vref}
N 300 20 300 60 {lab=VCTAT}
N 240 90 260 90 {lab=VCTAT}
N 240 40 240 90 {lab=VCTAT}
N 240 40 300 40 {lab=VCTAT}
N -180 -70 -120 -70 {lab=#net2}
N -120 -70 70 -70 {lab=#net2}
N 80 -120 80 -80 {lab=#net2}
N 80 -80 120 -80 {lab=#net2}
N 120 -80 250 -80 {lab=#net2}
N 250 -120 250 -80 {lab=#net2}
N 250 -120 260 -120 {lab=#net2}
N 120 130 130 130 {lab=#net9}
N 130 130 130 210 {lab=#net9}
N 170 240 200 240 {lab=#net9}
N 130 270 240 270 {lab=GND}
N 240 270 450 270 {lab=GND}
N 450 270 570 270 {lab=GND}
N 490 240 530 240 {lab=#net9}
N 450 210 570 210 {lab=#net9}
N 130 210 240 210 {lab=#net9}
N 240 210 450 210 {lab=#net9}
N 190 210 190 240 {lab=#net9}
N 510 210 510 240 {lab=#net9}
N 110 270 130 270 {lab=GND}
N 110 240 110 270 {lab=GND}
N 110 240 130 240 {lab=GND}
N 260 240 260 270 {lab=GND}
N 240 240 260 240 {lab=GND}
N 440 240 450 240 {lab=GND}
N 440 240 440 270 {lab=GND}
N 570 240 600 240 {lab=GND}
N 600 240 600 270 {lab=GND}
N 570 270 600 270 {lab=GND}
N 300 -70 370 -70 {lab=Vref}
N 300 30 380 30 {lab=VCTAT}
C {/home/vsduser/Desktop/asap_7nm_Xschem/asap_7nm_nfet.sym} 100 -30 0 0 {name=nfet1 model=asap_7nm_nfet spiceprefix=X l=7e-009 nfin=14}
C {/home/vsduser/Desktop/asap_7nm_Xschem/asap_7nm_nfet.sym} 30 -30 0 1 {name=nfet2 model=asap_7nm_nfet spiceprefix=X l=7e-009 nfin=14}
C {/home/vsduser/Desktop/asap_7nm_Xschem/asap_7nm_nfet.sym} -190 130 0 0 {name=nfet3 model=asap_7nm_nfet spiceprefix=X l=7e-009 nfin=14}
C {/home/vsduser/Desktop/asap_7nm_Xschem/asap_7nm_nfet.sym} -190 220 0 0 {name=nfet4 model=asap_7nm_nfet spiceprefix=X l=7e-009 nfin=14}
C {/home/vsduser/Desktop/asap_7nm_Xschem/asap_7nm_nfet.sym} -10 70 0 0 {name=nfet5 model=asap_7nm_nfet spiceprefix=X l=7e-009 nfin=14}
C {/home/vsduser/Desktop/asap_7nm_Xschem/asap_7nm_nfet.sym} 220 240 0 0 {name=nfet6 model=asap_7nm_nfet spiceprefix=X l=7e-009 nfin=14}
C {/home/vsduser/Desktop/asap_7nm_Xschem/asap_7nm_nfet.sym} 280 90 0 0 {name=nfet7 model=asap_7nm_nfet spiceprefix=X l=7e-009 nfin=14}
C {/home/vsduser/Desktop/asap_7nm_Xschem/asap_7nm_pfet.sym} 280 -120 0 0 {name=pfet1 model=asap_7nm_pfet spiceprefix=X l=7e-009 nfin=14}
C {/home/vsduser/Desktop/asap_7nm_Xschem/asap_7nm_pfet.sym} 100 -120 0 0 {name=pfet2 model=asap_7nm_pfet spiceprefix=X l=7e-009 nfin=14}
C {/home/vsduser/Desktop/asap_7nm_Xschem/asap_7nm_pfet.sym} 30 -120 0 1 {name=pfet3 model=asap_7nm_pfet spiceprefix=X l=7e-009 nfin=14}
C {/home/vsduser/Desktop/asap_7nm_Xschem/asap_7nm_pfet.sym} -210 -130 0 1 {name=pfet4 model=asap_7nm_pfet spiceprefix=X l=7e-009 nfin=14}
C {/home/vsduser/Desktop/asap_7nm_Xschem/asap_7nm_pfet.sym} -230 -20 0 1 {name=pfet5 model=asap_7nm_pfet spiceprefix=X l=7e-009 nfin=14}
C {/home/vsduser/Desktop/asap_7nm_Xschem/asap_7nm_pfet.sym} 30 -120 0 1 {name=pfet6 model=asap_7nm_pfet spiceprefix=X l=7e-009 nfin=14}
C {/home/vsduser/Desktop/asap_7nm_Xschem/asap_7nm_pfet.sym} -140 -20 0 0 {name=pfet7 model=asap_7nm_pfet spiceprefix=X l=7e-009 nfin=14}
C {res.sym} 120 100 0 0 {name=R1
value=1k
footprint=1206
device=resistor
m=1}
C {res.sym} 300 -10 0 0 {name=R2
value=1073
footprint=1206
device=resistor
m=1}
C {res.sym} 120 100 0 0 {name=R3
value=1k
footprint=1206
device=resistor
m=1}
C {/home/vsduser/Desktop/asap_7nm_Xschem/asap_7nm_nfet.sym} 550 240 0 0 {name=nfet8 model=asap_7nm_nfet spiceprefix=X l=7e-009 nfin=14}
C {/home/vsduser/Desktop/asap_7nm_Xschem/asap_7nm_nfet.sym} 470 240 0 1 {name=nfet9 model=asap_7nm_nfet spiceprefix=X l=7e-009 nfin=14}
C {/home/vsduser/Desktop/asap_7nm_Xschem/asap_7nm_nfet.sym} 150 240 0 1 {name=nfet10 model=asap_7nm_nfet spiceprefix=X l=7e-009 nfin=14}
C {gnd.sym} 530 270 0 0 {name=l1 lab=GND}
C {gnd.sym} 300 120 0 0 {name=l2 lab=GND}
C {gnd.sym} 10 100 0 0 {name=l3 lab=GND}
C {gnd.sym} -170 250 0 0 {name=l4 lab=GND}
C {lab_pin.sym} 370 -70 0 1 {name=p1 sig_type=std_logic lab=Vref}
C {lab_pin.sym} 380 30 0 1 {name=p2 sig_type=std_logic lab=VCTAT}
C {vdd.sym} 190 -150 0 0 {name=l5 lab=VDD}
C {vsource.sym} 610 -130 0 0 {name=V1 value=0.7 savecurrent=false}
C {gnd.sym} 610 -100 0 0 {name=l6 lab=GND}
C {lab_pin.sym} 610 -160 0 1 {name=p3 sig_type=std_logic lab=vdd}
C {code_shown.sym} 750 20 0 0 {name=s1 only_toplevel=false value="
.dc temp -45 150 5
.control
run
plot v(Vref) v(Vctat)
plot v(Vref)-v(Vctat)
plot v(Vctat)
plot v(Vref) 
let temp_coeff = deriv(v(Vref))/1.24
plot temp_coeff
.endc
"}
