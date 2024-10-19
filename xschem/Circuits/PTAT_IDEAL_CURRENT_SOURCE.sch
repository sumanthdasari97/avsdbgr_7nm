v {xschem version=3.4.6RC file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N -200 20 -150 20 {
lab=V1}
N -200 20 -200 40 {
lab=V1}
N -240 30 -240 70 {
lab=V1}
N -240 30 -200 30 {
lab=V1}
N 50 60 100 60 {
lab=V2}
N 70 30 70 60 {
lab=V2}
N -200 70 -180 70 {
lab=GND}
N -180 70 -180 100 {
lab=GND}
N -200 100 -180 100 {
lab=GND}
N -10 60 10 60 {
lab=GND}
N -10 60 -10 90 {
lab=GND}
N -10 90 10 90 {
lab=GND}
N 140 60 160 60 {
lab=GND}
N 160 60 160 90 {
lab=GND}
N 140 90 160 90 {
lab=GND}
N 70 -10 70 0 {
lab=V2}
N 10 0 70 0 {
lab=V2}
N 70 0 140 0 {
lab=V2}
N 10 0 10 30 {
lab=V2}
N 140 0 140 30 {
lab=V2}
N 10 30 70 30 {
lab=V2}
N 70 30 140 30 {
lab=V2}
N 70 -80 110 -80 {
lab=V2}
N 70 -90 70 -70 {
lab=V2}
N 70 -70 70 -10 {
lab=V2}
C {isource.sym} -200 -10 0 0 {name=I1 value=20uA }
C {lab_pin.sym} -320 40 0 0 {name=p1 sig_type=std_logic lab=VDD}
C {vdd.sym} -200 -40 0 0 {name=l1 lab=VDD}
C {vsource.sym} -320 70 0 0 {name=V1 value=0.7 savecurrent=false}
C {lab_pin.sym} -150 20 0 1 {name=p2 sig_type=std_logic lab=V1
}
C {code_shown.sym} 360 -70 0 0 {name=s1 only_toplevel=false value="
* Run a DC analysis to sweep temperature 
* from -25 to 125 degrees Celsius
.dc temp -25 125 5  
* I1 20u 60u 5u
.control
* Run the simulation
run

* Plot the voltage at VCTAT vs. temperature
plot v(V1)
plot v(V2)
plot v(V1)-v(V2)

.endc
"}
C {/home/dasari/Desktop/asap_7nm_Xschem/asap_7nm_nfet.sym} -220 70 0 0 {name=nfet7 model=asap_7nm_nfet spiceprefix=X l=7e-009 nfin=14}
C {gnd.sym} -320 100 0 0 {name=l2 lab=GND}
C {gnd.sym} -200 100 0 0 {name=l3 lab=GND}
C {isource.sym} 70 -120 0 0 {name=I2 value=20uA }
C {vdd.sym} 70 -150 0 0 {name=l4 lab=VDD}
C {/home/dasari/Desktop/asap_7nm_Xschem/asap_7nm_nfet.sym} 30 60 0 1 {name=nfet1 model=asap_7nm_nfet spiceprefix=X l=7e-009 nfin=14}
C {gnd.sym} 10 90 0 0 {name=l5 lab=GND}
C {/home/dasari/Desktop/asap_7nm_Xschem/asap_7nm_nfet.sym} 120 60 0 0 {name=nfet2 model=asap_7nm_nfet spiceprefix=X l=7e-009 nfin=14}
C {gnd.sym} 140 90 0 0 {name=l6 lab=GND}
C {lab_pin.sym} 110 -80 0 1 {name=p4 sig_type=std_logic lab=V2
}
