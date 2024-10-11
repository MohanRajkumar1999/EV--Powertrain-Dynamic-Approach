%% Drive Cycle Import
data = xlsread("MNEDC.xlsx"); %%%10.27km
data1 = readmatrix("Artemis_Urban_Drive_Cycle.xlsx"); %%%4.17km
data2 = readmatrix("Artemis_Rural_Drive_Cycle.xlsx");%% 17.27km
%% Vehicle Paramters

%%% chassis side
Mass_V = 1710.655; %5 mass of the vehicle
Area_V = 3.8056; %%Frontal area in m^2
Rw = 0.2032; %%Radius of vehicle
Crr = 0.015; %%Coefficient of rolling resistance
Rho = 1.225; %%Air Density
g= 9.81; %%Gravity constant
G_angle = 0; %% Grade angle
Cd = 0.28; %% Coefficient of drag
D_mass = 80; %%Driver mass in kg

%%Available parameter
B_f = 10000; %%%Brake force
A_power = 30000; %%Available power (watts)

%%Transmission System

G_R = 7.9;

%%%Motor Dynamic Efficiency
Motor_eff = readmatrix("Nissan_Leaf_Motor_Efficiency.xls");
Motor_speed = Motor_eff(1:15,1);
Motor_torque= Motor_eff(1:15,17);
Motor_efficiency = Motor_eff(1:15,2:16);

%%%Motor Regenerative Efficiency
Motor_eff_regen = readmatrix("Nissan_Leaf_Motor_Regenerative_efficiency.xls");
Motor_speed_regen = Motor_eff_regen(1:15,1);
Motor_torque_regen= Motor_eff_regen(1:15,17);
Motor_efficiency_regen = Motor_eff_regen(1:15,2:16);

%%Motor Contoller Efficiency
Motor_Cont = readmatrix("Nissan-Leaf-Motor-Controller-Efficiency.xlsx");
Motor_cont_speed = Motor_Cont(1:15,1);
Motor_cont_torque= Motor_Cont(1:15,17);
Motor_cont_efficiency = Motor_Cont(1:15,2:16);

%%Motor Contoller regen Efficiency
Motor_Cont_regen = readmatrix("Nissan-leaf-motor-controller-regenerative-efficiency.xlsx");
Motor_cont_speed_regen = Motor_Cont_regen(1:15,1);
Motor_cont_torque_regen= Motor_Cont_regen(1:15,17);
Motor_cont_efficiency_regen = Motor_Cont_regen(1:15,2:16);

%%Battery 

Battery_energy = 24000; %%Battery energy
B_Voltage = 364; %%%Battery Voltage
DC_dist = 10.27; %%Drive cycle distance

%%Cell

cell_vol = 3.8; %%Cell voltage
cell_capacity = 33.1; %%cell capacity


