v {xschem version=3.4.6RC file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N -230 10 -230 20 {
lab=VDD}
N -110 0 -60 0 {
lab=VCTAT}
N -110 0 -110 20 {
lab=VCTAT}
N -150 20 -110 20 {
lab=VCTAT}
N -150 20 -150 50 {
lab=VCTAT}
C {isource.sym} -110 -30 0 0 {name=I1 value=20uA }
C {lab_pin.sym} -230 10 0 0 {name=p1 sig_type=std_logic lab=VDD}
C {vdd.sym} -110 -60 0 0 {name=l1 lab=VDD}
C {vsource.sym} -230 50 0 0 {name=V1 value=0.7 savecurrent=false}
C {lab_pin.sym} -60 0 0 1 {name=p2 sig_type=std_logic lab=VCTAT
}
C {code_shown.sym} 10 -170 0 0 {name=s1 only_toplevel=false value="





* Run a DC analysis to sweep temperature from -40 to 125 degrees Celsius
.dc temp -25 125 5
.control
* Run the simulation
run

* Plot the voltage at VCTAT vs. temperature
plot v(VCTAT) 




.endc
"}
C {gnd.sym} -110 80 0 0 {name=l2 lab=GND}
C {gnd.sym} -230 80 0 0 {name=l3 lab=GND}
C {/home/dasari/Desktop/asap_7nm_Xschem/asap_7nm_nfet.sym} -130 50 2 1 {name=nfet7 model=asap_7nm_nfet spiceprefix=X l=7e-009 nfin=14}
