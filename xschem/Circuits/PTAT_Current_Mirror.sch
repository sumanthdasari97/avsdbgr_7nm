v {xschem version=3.4.6RC file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N -150 40 -100 40 {
lab=V1}
N -150 80 -150 100 {
lab=V1}
N -190 90 -190 130 {
lab=V1}
N -190 90 -150 90 {
lab=V1}
N -150 130 -130 130 {
lab=GND}
N -110 -80 40 -80 {
lab=#net1}
N -150 -140 -150 -110 {
lab=#net1}
N -150 -140 -80 -140 {
lab=#net1}
N -80 -140 -80 -80 {
lab=#net1}
N -250 -80 -150 -80 {
lab=GND}
N 80 -80 170 -80 {
lab=GND}
N 80 -160 80 -110 {
lab=#net2}
N -110 -190 40 -190 {
lab=#net2}
N -150 -160 -150 -140 {
lab=#net1}
N -150 -240 -150 -220 {
lab=VDD}
N 80 -240 80 -220 {
lab=VDD}
N -150 -240 80 -240 {
lab=VDD}
N -30 -260 -30 -240 {
lab=VDD}
N -150 -50 -150 80 {
lab=V1}
N 80 -50 80 20 {
lab=V3}
N -250 -190 -150 -190 {
lab=VDD}
N -250 -240 -250 -190 {
lab=VDD}
N -250 -240 -150 -240 {
lab=VDD}
N 40 -190 40 -140 {
lab=#net2}
N 40 -140 80 -140 {
lab=#net2}
N 80 -190 130 -190 {
lab=VDD}
N 130 -240 130 -190 {
lab=VDD}
N 80 -240 130 -240 {
lab=VDD}
N 80 -10 130 -10 {
lab=V3}
N 60 130 110 130 {
lab=V4}
N 80 100 80 130 {
lab=V4}
N 150 130 170 130 {
lab=GND}
N 170 130 170 160 {
lab=GND}
N 150 160 170 160 {
lab=GND}
N 20 100 80 100 {
lab=V4}
N 80 100 150 100 {
lab=V4}
N -130 130 -130 160 {
lab=GND}
N -150 160 -130 160 {
lab=GND}
N 0 130 20 130 {
lab=GND}
N 0 130 0 160 {
lab=GND}
N 0 160 20 160 {
lab=GND}
N 80 80 80 100 {
lab=V4}
N 80 80 130 80 {
lab=V4}
N 280 130 330 130 {
lab=V4}
N 300 100 300 130 {
lab=V4}
N 370 130 390 130 {
lab=GND}
N 390 130 390 160 {
lab=GND}
N 370 160 390 160 {
lab=GND}
N 240 100 300 100 {
lab=V4}
N 300 100 370 100 {
lab=V4}
N 220 130 240 130 {
lab=GND}
N 220 130 220 160 {
lab=GND}
N 220 160 240 160 {
lab=GND}
N 490 130 540 130 {
lab=V4}
N 510 100 510 130 {
lab=V4}
N 580 130 600 130 {
lab=GND}
N 600 130 600 160 {
lab=GND}
N 580 160 600 160 {
lab=GND}
N 450 100 510 100 {
lab=V4}
N 510 100 580 100 {
lab=V4}
N 430 130 450 130 {
lab=GND}
N 430 130 430 160 {
lab=GND}
N 430 160 450 160 {
lab=GND}
N 150 100 240 100 {
lab=V4}
N 370 100 450 100 {
lab=V4}
N 670 130 720 130 {
lab=V4}
N 690 100 690 130 {
lab=V4}
N 760 130 780 130 {
lab=GND}
N 780 130 780 160 {
lab=GND}
N 760 160 780 160 {
lab=GND}
N 630 100 690 100 {
lab=V4}
N 690 100 760 100 {
lab=V4}
N 610 130 630 130 {
lab=GND}
N 610 130 610 160 {
lab=GND}
N 610 160 630 160 {
lab=GND}
N 580 100 630 100 {
lab=V4}
C {lab_pin.sym} -300 -20 0 0 {name=p1 sig_type=std_logic lab=VDD}
C {vdd.sym} -30 -260 0 0 {name=l1 lab=VDD}
C {vsource.sym} -300 10 0 0 {name=V1 value=0.7 savecurrent=false}
C {lab_pin.sym} -100 40 0 1 {name=p2 sig_type=std_logic lab=V1
}
C {code_shown.sym} 800 -40 2 0 {name=s1 only_toplevel=false value="
* Run a DC analysis to sweep temperature 
* from -25 to 125 degrees Celsius
.dc temp -25 125 5  
* I1 20u 60u 5u
.control
* Run the simulation
run
* Plot the voltage at VCTAT vs. temperature
plot v(V3)-v(V4) 
plot deriv(v(V3)-v(V4))
plot v(V1)
plot deriv(v(V1))
.endc
"}
C {/home/dasari/Desktop/asap_7nm_Xschem/asap_7nm_nfet.sym} -170 130 0 0 {name=nfet7 model=asap_7nm_nfet spiceprefix=X l=7e-009 nfin=14}
C {gnd.sym} -300 40 0 0 {name=l2 lab=GND}
C {gnd.sym} -150 160 0 0 {name=l3 lab=GND}
C {lab_pin.sym} 130 -10 0 1 {name=p4 sig_type=std_logic lab=V3
}
C {/home/dasari/Desktop/asap_7nm_Xschem/asap_7nm_nfet.sym} -130 -80 0 1 {name=nfet3 model=asap_7nm_nfet spiceprefix=X l=7e-009 nfin=14}
C {/home/dasari/Desktop/asap_7nm_Xschem/asap_7nm_pfet.sym} 60 -190 0 0 {name=pfet1 model=asap_7nm_pfet spiceprefix=X l=7e-009 nfin=14}
C {/home/dasari/Desktop/asap_7nm_Xschem/asap_7nm_nfet.sym} 60 -80 0 0 {name=nfet4 model=asap_7nm_nfet spiceprefix=X l=7e-009 nfin=14}
C {gnd.sym} -250 -80 0 0 {name=l7 lab=GND}
C {gnd.sym} 170 -80 0 0 {name=l8 lab=GND}
C {/home/dasari/Desktop/asap_7nm_Xschem/asap_7nm_pfet.sym} -130 -190 0 1 {name=pfet2 model=asap_7nm_pfet spiceprefix=X l=7e-009 nfin=14}
C {/home/dasari/Desktop/asap_7nm_Xschem/asap_7nm_nfet.sym} 40 130 0 1 {name=nfet5 model=asap_7nm_nfet spiceprefix=X l=7e-009 nfin=14}
C {gnd.sym} 20 160 0 0 {name=l4 lab=GND}
C {/home/dasari/Desktop/asap_7nm_Xschem/asap_7nm_nfet.sym} 130 130 0 0 {name=nfet6 model=asap_7nm_nfet spiceprefix=X l=7e-009 nfin=14}
C {gnd.sym} 150 160 0 0 {name=l9 lab=GND}
C {res.sym} 80 50 0 0 {name=R1
value=20.794K
footprint=1206
device=resistor
m=1}
C {lab_pin.sym} 130 80 0 1 {name=p3 sig_type=std_logic lab=V4
}
C {/home/dasari/Desktop/asap_7nm_Xschem/asap_7nm_nfet.sym} 260 130 0 1 {name=nfet1 model=asap_7nm_nfet spiceprefix=X l=7e-009 nfin=14}
C {gnd.sym} 240 160 0 0 {name=l5 lab=GND}
C {/home/dasari/Desktop/asap_7nm_Xschem/asap_7nm_nfet.sym} 350 130 0 0 {name=nfet2 model=asap_7nm_nfet spiceprefix=X l=7e-009 nfin=14}
C {gnd.sym} 370 160 0 0 {name=l6 lab=GND}
C {/home/dasari/Desktop/asap_7nm_Xschem/asap_7nm_nfet.sym} 470 130 0 1 {name=nfet8 model=asap_7nm_nfet spiceprefix=X l=7e-009 nfin=14}
C {gnd.sym} 450 160 0 0 {name=l10 lab=GND}
C {/home/dasari/Desktop/asap_7nm_Xschem/asap_7nm_nfet.sym} 560 130 0 0 {name=nfet9 model=asap_7nm_nfet spiceprefix=X l=7e-009 nfin=14}
C {gnd.sym} 580 160 0 0 {name=l11 lab=GND}
C {/home/dasari/Desktop/asap_7nm_Xschem/asap_7nm_nfet.sym} 650 130 0 1 {name=nfet10 model=asap_7nm_nfet spiceprefix=X l=7e-009 nfin=14}
C {gnd.sym} 630 160 0 0 {name=l12 lab=GND}
C {/home/dasari/Desktop/asap_7nm_Xschem/asap_7nm_nfet.sym} 740 130 0 0 {name=nfet11 model=asap_7nm_nfet spiceprefix=X l=7e-009 nfin=14}
C {gnd.sym} 760 160 0 0 {name=l13 lab=GND}
