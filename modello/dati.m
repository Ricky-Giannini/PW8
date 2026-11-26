%CORE DATA
%termal power MW
Wth=300;
%coolant mass flow rate kg/s
tao=25984;
%total number of FAs
FAs=171;
%Pins per FA
Pins=127;
%coolant inlet T gradi C
Tin=400;
%coolant outlet T gradi C
Tout=480;


%{PIN DATA
% Cladding Material= 15-15-Ti
% Fuel Material= MOX
%}

%Cladding outer radius
Rcl_out=5.25*10^-3;
%Cladding inner radius
Rcl_in=4.65*10^-3;
%Pellet radius 
Rp_out=4.50*10^-3;
Rp_in=1*10^-3;
Hpin=0.6;
%geometrie per assembly su power point


%DATA SG
%power MW
Wsg=37,5;
%feedwater inlet T
Tin_H20=335;
Tout_H20=450;
%pressur bar
PH20=180;
%slave tube
DSl_ext=9.52*10^-3;
ThSl=1.07*10^-3;
RSl_in=(DSl_ext-ThSl_ext*2)/2;
RSl_out=DSl_ext/2;
%inner tube
DIn_in=19.05*10^-3;
Th

