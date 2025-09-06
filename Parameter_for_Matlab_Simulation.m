L = 330e-3;
%C = 2*470e-6; %why 

Vdc_input = 800;
Vdc_bus_ref = 400;

Vnom = 400;
C = 2*470E-6;
Rd = 0.25;

Vcap_init = 380; 
%Voltage control loop
KpV = 0.8;
KiV = 8;
% Inductor current control loop
KpC = 4;
KiC = 40;

% Time activate consensus
Time_act_Conse_CASE1 = 2;
Time_delay_DAB_Consensus = 1;

%Consensus
Consensus_gain =0.4;
%consensus Secondary controller
Kp_Conse = 0.8*4;
Ki_Conse = 8*8;


%Time activate Volt RES
Time_act_Vol_RES = 3;
Time_change_KpRES = Time_act_Vol_RES +0.5;
% DC bus restoration
KpRES_init =0;
KpRES = 2;
KiRES = 20;

%Time connect load 2 and 3
Time_Load2 = 4;
Time_Load2_disconnect  = 7;
Time_Load3 = 5;
Time_Load3_disconnect  = 1000;

%Time_Load4 = 5;

IL_ref_fixed = 3;
IL_ref_fixed_DAB = 4;
% Io_IL_max = 3 ;
Io_IL_max = 3 ;  %NOTE extend 
Io_IL_max_DAB = 4;

% Io_compare_value =3;
% Io_compare_value =3;


Io_ref_fixed = 5;
% output current control loop
KpIo =8;
KiIo =80;
% IL_ref_fixed = 5;

R1 = 80;
R2 = 80*4;
R3 = 80*10;

%R4 = 80*10;
R_DAB_LOCAL = 1000*2;


r1 = 0.8;
r2 = 1.2;
r3 = 0.5;
