% This code will be testing the many balbi parameters to see how sensitive
% the model is to changes. As for what I will change, I will first look at
% the code and determing what parameters in the paper I could possibly
% change

fuels_mod;
%ros_balbi(fuel(1), 1.5, tand(3), 0.03)
%% Testing just the base model
ros_rothermel(fuel(1), 1.5, tand(3), 0.03)

% Make the figure smaller
%figure out how to change the figsize 
%% Testing the Fuel Moisture
x = linspace(0, .12, 1000);
[ir, qig, phiw, phis, gamma, xifr, etam, rtemp1, ros] = ros_rothermel(fuel(1), 1.5, tand(3), x);
x = x .* 100;

% Rate of spread
%subplot(3, 3, 1);
figure('Renderer', 'painters', 'Position', [10 10 800 600])
tiledlayout(3, 3, 'TileSpacing', 'compact', 'Padding', 'none');
nexttile
a = plot(x, ros, color = 'blue');
set(a,'LineWidth',2);
%xlabel('Fuel Moisture %', fontsize = 13, fontweight = 'bold');
ylabel('Rate of Spread', fontsize = 13, fontweight = 'bold');
title('ROS vs. Fuel Moisture', fontsize = 13, fontweight = 'bold');
grid on;
%ylim([0, max(ros)]);

% IR radiative component
%subplot(3, 3, 2);
nexttile
a = plot(x, ir, color = 'blue');
set(a,'LineWidth',2);
%xlabel('Fuel Moisture %', fontsize = 13, fontweight = 'bold');
ylabel('IR', fontsize = 13, fontweight = 'bold');
title('IR vs. Fuel Moisture', fontsize = 13, fontweight = 'bold');
grid on;
%ylim([0, max(ros)]);

% Radiative component
%subplot(3, 3, 3);
nexttile
a = plot(x, qig, color = 'blue');
set(a,'LineWidth',2);
%xlabel('Fuel Moisture %', fontsize = 13, fontweight = 'bold');
ylabel('Q_{ig} btu/lb', fontsize = 13, fontweight = 'bold');
title('Qig vs. Fuel Moisture', fontsize = 13, fontweight = 'bold');
grid on;
%ylim([0, max(ros)]);
 
% Flame base radiation
%subplot(3, 3, 4);
nexttile
a = plot(x, phiw, color = 'blue');
set(a,'LineWidth',2);
%xlabel('Fuel Moisture %', fontsize = 13, fontweight = 'bold');
ylabel('Phi_w', fontsize = 13, fontweight = 'bold');
title('Phi_w vs. Fuel Moisture', fontsize = 13, fontweight = 'bold');
grid on;
%ylim([0, max(ros)]);

%subplot(3, 3, 5);
nexttile
a = plot(x, phis, color = 'blue');
set(a,'LineWidth',2);
%xlabel('Fuel Moisture %', fontsize = 13, fontweight = 'bold');
ylabel('Phi_S', fontsize = 13, fontweight = 'bold');
title('Phi_s vs. Fuel Moisture', fontsize = 13, fontweight = 'bold');
grid on;
%ylim([0, max(ros)]);

%subplot(3, 3, 6);
nexttile
a = plot(x, gamma, color = 'blue');
set(a,'LineWidth',2);
%xlabel('Fuel Moisture %', fontsize = 13, fontweight = 'bold');
ylabel('Gamma (1/min) ', fontsize = 13, fontweight = 'bold');
title('Gamma vs. Fuel Moisture', fontsize = 13, fontweight = 'bold');
grid on;
%ylim([0, max(ros)]);

%subplot(3, 3, 7);
nexttile
a = plot(x, xifr, color = 'blue');
set(a,'LineWidth',2);
xlabel('Fuel Moisture %', fontsize = 13, fontweight = 'bold');
ylabel('xifr', fontsize = 13, fontweight = 'bold');
title('Propagating Flux Ratio vs. Fuel Moisture', fontsize = 13, fontweight = 'bold');
grid on;
%ylim([0, max(ros)]);

%subplot(3, 3, 8);
nexttile
a = plot(x, etam, color = 'blue');
set(a,'LineWidth',2);
xlabel('Fuel Moisture %', fontsize = 13, fontweight = 'bold');
ylabel('etam', fontsize = 13, fontweight = 'bold');
title('Moisture Damping Coef. vs. Fuel Moisture', fontsize = 13, fontweight = 'bold');
grid on;
%ylim([0, max(ros)]);

%subplot(3, 3, 9);
nexttile
a = plot(x, rtemp1, color = 'blue');
set(a,'LineWidth',2);
xlabel('Fuel Moisture %', fontsize = 13, fontweight = 'bold');
ylabel('FMC/FMC Extinction', fontsize = 13, fontweight = 'bold');
title('FMC/FMC Extinction vs. Fuel Moisture', fontsize = 13, fontweight = 'bold');
grid on;
%ylim([0, max(ros)]);

sgtitle('Fuel Moisture % vs. ROS, ir, qig, phiw, phis, gamma, xifr, etam, rtemp1', fontsize = 16, fontweight = 'bold')
%% Testing the Wind Speed
x = linspace(0, 20, 1000);
[ir, qig, phiw, phis, gamma, xifr, etam, rtemp1, ros] = ros_rothermel(fuel(1), x, tand(3), 0.03);


% Rate of spread
%subplot(3, 3, 1);
figure('Renderer', 'painters', 'Position', [10 10 800 600])
tiledlayout(3, 3, 'TileSpacing', 'compact', 'Padding', 'none');
nexttile
a = plot(x, ros, color = 'blue');
set(a,'LineWidth',2);
%xlabel('Wind Speed (m/s)', fontsize = 13, fontweight = 'bold');
ylabel('Rate of Spread', fontsize = 13, fontweight = 'bold');
title('ROS vs. Wind Speed (m/s)', fontsize = 11, fontweight = 'bold');
grid on;
%ylim([0, max(ros)]);

% IR radiative component
%subplot(3, 3, 2);
nexttile
a = plot(x, ir, color = 'blue');
set(a,'LineWidth',2);
%xlabel('Wind Speed (m/s)', fontsize = 13, fontweight = 'bold');
ylabel('IR', fontsize = 13, fontweight = 'bold');
title('IR vs. Wind Speed (m/s)', fontsize = 11, fontweight = 'bold');
grid on;
%ylim([0, max(ros)]);

% Radiative component
%subplot(3, 3, 3);
nexttile
a = plot(x, qig, color = 'blue');
set(a,'LineWidth',2);
%xlabel('Wind Speed (m/s)', fontsize = 13, fontweight = 'bold');
ylabel('Q_{ig} btu/lb', fontsize = 13, fontweight = 'bold');
title('Qig vs. Wind Speed (m/s)', fontsize = 11, fontweight = 'bold');
grid on;
%ylim([0, max(ros)]);
 
% Flame base radiation
%subplot(3, 3, 4);
nexttile
a = plot(x, phiw, color = 'blue');
set(a,'LineWidth',2);
%xlabel('Wind Speed (m/s)', fontsize = 13, fontweight = 'bold');
ylabel('Phi_w', fontsize = 13, fontweight = 'bold');
title('Phi_w vs. Wind Speed (m/s)', fontsize = 11, fontweight = 'bold');
grid on;
%ylim([0, max(ros)]);

%subplot(3, 3, 5);
nexttile
a = plot(x, phis, color = 'blue');
set(a,'LineWidth',2);
%xlabel('Wind Speed (m/s)', fontsize = 13, fontweight = 'bold');
ylabel('Phi_S', fontsize = 13, fontweight = 'bold');
title('Phi_s vs. Wind Speed (m/s)', fontsize = 11, fontweight = 'bold');
grid on;
%ylim([0, max(ros)]);


%subplot(3, 3, 6);
nexttile
a = plot(x, gamma, color = 'blue');
set(a,'LineWidth',2);
%xlabel('Wind Speed (m/s)', fontsize = 13, fontweight = 'bold');
ylabel('Gamma (1/min) ', fontsize = 13, fontweight = 'bold');
title('Gamma vs. Wind Speed (m/s)', fontsize = 11, fontweight = 'bold');
grid on;
%ylim([0, max(ros)]);

%subplot(3, 3, 7);
nexttile
a = plot(x, xifr, color = 'blue');
set(a,'LineWidth',2);
xlabel('Wind Speed (m/s)', fontsize = 13, fontweight = 'bold');
ylabel('xifr', fontsize = 13, fontweight = 'bold');
title('Propagating Flux Ratio vs. Wind Speed (m/s)', fontsize = 11, fontweight = 'bold');
grid on;
%ylim([0, max(ros)]);

%subplot(3, 3, 8);
nexttile
a = plot(x, etam, color = 'blue');
set(a,'LineWidth',2);
xlabel('Wind Speed (m/s)', fontsize = 13, fontweight = 'bold');
ylabel('etam', fontsize = 13, fontweight = 'bold');
title('Moisture Damping Coef. vs. Wind Speed (m/s)', fontsize = 11, fontweight = 'bold');
grid on;
%ylim([0, max(ros)]);

%subplot(3, 3, 9);
nexttile
a = plot(x, rtemp1, color = 'blue');
set(a,'LineWidth',2);
xlabel('Wind Speed (m/s)', fontsize = 13, fontweight = 'bold');
ylabel('FMC/FMC Extinction', fontsize = 13, fontweight = 'bold');
title('FMC/FMC Extinction vs. Wind Speed (m/s)', fontsize = 11, fontweight = 'bold');
grid on;
%ylim([0, max(ros)]);

sgtitle('Wind Speed vs. ROS, ir, qig, phiw, phis, gamma, xifr, etam, rtemp1', fontsize = 18, fontweight = 'bold')
%% Testing the Slope
x = linspace(0, 80, 1000);
[ir, qig, phiw, phis, gamma, xifr, etam, rtemp1, ros] = ros_rothermel(fuel(1), 1.5, tand(x), 0.03);


% Rate of spread
%subplot(3, 3, 1);
figure('Renderer', 'painters', 'Position', [10 10 800 600])
tiledlayout(3, 3, 'TileSpacing', 'compact', 'Padding', 'none');
nexttile
a = plot(x, ros, color = 'blue');
set(a,'LineWidth',2);
%xlabel('Slope', fontsize = 13, fontweight = 'bold');
ylabel('Rate of Spread', fontsize = 13, fontweight = 'bold');
title('ROS vs. Slope', fontsize = 13, fontweight = 'bold');
grid on;
%ylim([0, max(ros)]);

% IR radiative component
%subplot(3, 3, 2);
nexttile
a = plot(x, ir, color = 'blue');
set(a,'LineWidth',2);
%xlabel('Slope', fontsize = 13, fontweight = 'bold');
ylabel('IR', fontsize = 13, fontweight = 'bold');
title('IR vs. Slope', fontsize = 13, fontweight = 'bold');
grid on;
%ylim([0, max(ros)]);

% Radiative component
%subplot(3, 3, 3);
nexttile
a = plot(x, qig, color = 'blue');
set(a,'LineWidth',2);
%xlabel('Slope', fontsize = 13, fontweight = 'bold');
ylabel('Q_{ig} btu/lb', fontsize = 13, fontweight = 'bold');
title('Qig vs. Slope', fontsize = 13, fontweight = 'bold');
grid on;
%ylim([0, max(ros)]);
 
% Flame base radiation
%subplot(3, 3, 4);
nexttile
a = plot(x, phiw, color = 'blue');
set(a,'LineWidth',2);
%xlabel('Slope', fontsize = 13, fontweight = 'bold');
ylabel('Phi_w', fontsize = 13, fontweight = 'bold');
title('Phi_w vs. Slope', fontsize = 13, fontweight = 'bold');
grid on;
%ylim([0, max(ros)]);

%subplot(3, 3, 5);
nexttile
a = plot(x, phis, color = 'blue');
set(a,'LineWidth',2);
%xlabel('Slope', fontsize = 13, fontweight = 'bold');
ylabel('Phi_S', fontsize = 13, fontweight = 'bold');
title('Phi_s vs. Slope', fontsize = 13, fontweight = 'bold');
grid on;
%ylim([0, max(ros)]);


%subplot(3, 3, 6);
nexttile
a = plot(x, gamma, color = 'blue');
set(a,'LineWidth',2);
%xlabel('Slope', fontsize = 13, fontweight = 'bold');
ylabel('Gamma (1/min) ', fontsize = 13, fontweight = 'bold');
title('Gamma vs. Slope', fontsize = 13, fontweight = 'bold');
grid on;
%ylim([0, max(ros)]);

%subplot(3, 3, 7);
nexttile
a = plot(x, xifr, color = 'blue');
set(a,'LineWidth',2);
xlabel('Slope', fontsize = 13, fontweight = 'bold');
ylabel('xifr', fontsize = 13, fontweight = 'bold');
title('Propagating Flux Ratio vs. Slope', fontsize = 13, fontweight = 'bold');
grid on;
%ylim([0, max(ros)]);

%subplot(3, 3, 8);
nexttile
a = plot(x, etam, color = 'blue');
set(a,'LineWidth',2);
xlabel('Slope', fontsize = 13, fontweight = 'bold');
ylabel('etam', fontsize = 13, fontweight = 'bold');
title('Moisture Damping Coef. vs. Slope', fontsize = 13, fontweight = 'bold');
grid on;
%ylim([0, max(ros)]);

%subplot(3, 3, 9);
nexttile
a = plot(x, rtemp1, color = 'blue');
set(a,'LineWidth',2);
xlabel('Slope', fontsize = 13, fontweight = 'bold');
ylabel('FMC/FMC Extinction', fontsize = 13, fontweight = 'bold');
title('FMC/FMC Extinction vs. Slope', fontsize = 13, fontweight = 'bold');
grid on;
%ylim([0, max(ros)]);

sgtitle('Slope (Degrees) vs. ROS, ir, qig, phiw, phis, gamma, xifr, etam, rtemp1', fontsize = 18, fontweight = 'bold')
%% Testing the Fuel Height
x = linspace(0, 20, 1000);
[ir, qig, phiw, phis, gamma, xifr, etam, rtemp1, ros] = ros_rothermel(fuel(1), 1.5, tand(x), 0.03, x);


% Rate of spread
%subplot(3, 3, 1);
figure('Renderer', 'painters', 'Position', [10 10 800 600])
tiledlayout(3, 3, 'TileSpacing', 'compact', 'Padding', 'none');
nexttile
a = plot(x, ros, color = 'blue');
set(a,'LineWidth',2);
%xlabel('Fuel Height (m)', fontsize = 13, fontweight = 'bold');
ylabel('Rate of Spread', fontsize = 13, fontweight = 'bold');
title('ROS vs. Fuel Height (m)', fontsize = 13, fontweight = 'bold');
grid on;
%ylim([0, max(ros)]);

% IR radiative component
%subplot(3, 3, 2);
nexttile
a = plot(x, ir, color = 'blue');
set(a,'LineWidth',2);
%xlabel('Fuel Height (m)', fontsize = 13, fontweight = 'bold');
ylabel('IR', fontsize = 13, fontweight = 'bold');
title('IR vs. Fuel Height (m)', fontsize = 13, fontweight = 'bold');
grid on;
%ylim([0, max(ros)]);

% Radiative component
%subplot(3, 3, 3);
nexttile
a = plot(x, qig, color = 'blue');
set(a,'LineWidth',2);
%xlabel('Fuel Height (m)', fontsize = 13, fontweight = 'bold');
ylabel('Q_{ig} btu/lb', fontsize = 13, fontweight = 'bold');
title('Qig vs. Fuel Height (m)', fontsize = 13, fontweight = 'bold');
grid on;
%ylim([0, max(ros)]);
 
% Flame base radiation
%subplot(3, 3, 4);
nexttile
a = plot(x, phiw, color = 'blue');
set(a,'LineWidth',2);
%xlabel('Fuel Height (m)', fontsize = 13, fontweight = 'bold');
ylabel('Phi_w', fontsize = 13, fontweight = 'bold');
title('Phi_w vs. Fuel Height (m)', fontsize = 13, fontweight = 'bold');
grid on;
%ylim([0, max(ros)]);

%subplot(3, 3, 5);
nexttile
a = plot(x, phis, color = 'blue');
set(a,'LineWidth',2);
%xlabel('Fuel Height (m)', fontsize = 13, fontweight = 'bold');
ylabel('Phi_S', fontsize = 13, fontweight = 'bold');
title('Phi_s vs. Fuel Height (m)', fontsize = 13, fontweight = 'bold');
grid on;
%ylim([0, max(ros)]);


%subplot(3, 3, 6);
nexttile
a = plot(x, gamma, color = 'blue');
set(a,'LineWidth',2);
%xlabel('Slope', fontsize = 13, fontweight = 'bold');
ylabel('Gamma (1/min) ', fontsize = 13, fontweight = 'bold');
title('Gamma vs. Fuel Height (m)', fontsize = 13, fontweight = 'bold');
grid on;
%ylim([0, max(ros)]);

%subplot(3, 3, 7);
nexttile
a = plot(x, xifr, color = 'blue');
set(a,'LineWidth',2);
xlabel('Slope', fontsize = 13, fontweight = 'bold');
ylabel('xifr', fontsize = 13, fontweight = 'bold');
title('Propagating Flux Ratio vs. Fuel Height (m)', fontsize = 13, fontweight = 'bold');
grid on;
%ylim([0, max(ros)]);

%subplot(3, 3, 8);
nexttile
a = plot(x, etam, color = 'blue');
set(a,'LineWidth',2);
xlabel('Slope', fontsize = 13, fontweight = 'bold');
ylabel('etam', fontsize = 13, fontweight = 'bold');
title('Moisture Damping Coef. vs. Fuel Height (m)', fontsize = 13, fontweight = 'bold');
grid on;
%ylim([0, max(ros)]);

%subplot(3, 3, 9);
nexttile
a = plot(x, rtemp1, color = 'blue');
set(a,'LineWidth',2);
xlabel('Slope', fontsize = 13, fontweight = 'bold');
ylabel('FMC/FMC Extinction', fontsize = 13, fontweight = 'bold');
title('FMC/FMC Extinction vs. Fuel Height (m)', fontsize = 13, fontweight = 'bold');
grid on;
%ylim([0, max(ros)]);

sgtitle('Fuel Height (m) vs. ROS, ir, qig, phiw, phis, gamma, xifr, etam, rtemp1', fontsize = 18, fontweight = 'bold')

%% Testing the Fuel Load
x = linspace(0, 0.969, 1000);
[ir, qig, phiw, phis, gamma, xifr, etam, rtemp1, ros] = ros_rothermel(fuel(1), 1.5, tand(x), 0.03, x);


% Rate of spread
%subplot(3, 3, 1);
figure('Renderer', 'painters', 'Position', [10 10 800 600])
tiledlayout(3, 3, 'TileSpacing', 'compact', 'Padding', 'none');
nexttile
a = plot(x, ros, color = 'blue');
set(a,'LineWidth',2);
%xlabel('Fuel Load (Kg/m^2)', fontsize = 13, fontweight = 'bold');
ylabel('Rate of Spread', fontsize = 13, fontweight = 'bold');
title('ROS vs. Fuel Load (Kg/m^2)', fontsize = 13, fontweight = 'bold');
grid on;
%ylim([0, max(ros)]);

% IR radiative component
%subplot(3, 3, 2);
nexttile
a = plot(x, ir, color = 'blue');
set(a,'LineWidth',2);
%xlabel('Fuel Load (Kg/m^2)', fontsize = 13, fontweight = 'bold');
ylabel('IR', fontsize = 13, fontweight = 'bold');
title('IR vs. Fuel Load (Kg/m^2)', fontsize = 13, fontweight = 'bold');
grid on;
%ylim([0, max(ros)]);

% Radiative component
%subplot(3, 3, 3);
nexttile
a = plot(x, qig, color = 'blue');
set(a,'LineWidth',2);
%xlabel('Fuel Load (Kg/m^2)', fontsize = 13, fontweight = 'bold');
ylabel('Q_{ig} btu/lb', fontsize = 13, fontweight = 'bold');
title('Qig vs. Fuel Load (Kg/m^2)', fontsize = 13, fontweight = 'bold');
grid on;
%ylim([0, max(ros)]);
 
% Flame base radiation
%subplot(3, 3, 4);
nexttile
a = plot(x, phiw, color = 'blue');
set(a,'LineWidth',2);
%xlabel('Fuel Load (Kg/m^2)', fontsize = 13, fontweight = 'bold');
ylabel('Phi_w', fontsize = 13, fontweight = 'bold');
title('Phi_w vs. Fuel Load (Kg/m^2)', fontsize = 13, fontweight = 'bold');
grid on;
%ylim([0, max(ros)]);

%subplot(3, 3, 5);
nexttile
a = plot(x, phis, color = 'blue');
set(a,'LineWidth',2);
%xlabel('Fuel Load (Kg/m^2)', fontsize = 13, fontweight = 'bold');
ylabel('Phi_S', fontsize = 13, fontweight = 'bold');
title('Phi_s vs. Fuel Load (Kg/m^2)', fontsize = 13, fontweight = 'bold');
grid on;
%ylim([0, max(ros)]);


%subplot(3, 3, 6);
nexttile
a = plot(x, gamma, color = 'blue');
set(a,'LineWidth',2);
%xlabel('Slope', fontsize = 13, fontweight = 'bold');
ylabel('Gamma (1/min) ', fontsize = 13, fontweight = 'bold');
title('Gamma vs. Fuel Load (Kg/m^2)', fontsize = 13, fontweight = 'bold');
grid on;
%ylim([0, max(ros)]);

%subplot(3, 3, 7);
nexttile
a = plot(x, xifr, color = 'blue');
set(a,'LineWidth',2);
xlabel('Slope', fontsize = 13, fontweight = 'bold');
ylabel('xifr', fontsize = 13, fontweight = 'bold');
title('Propagating Flux Ratio vs. Fuel Load (Kg/m^2)', fontsize = 13, fontweight = 'bold');
grid on;
%ylim([0, max(ros)]);

%subplot(3, 3, 8);
nexttile
a = plot(x, etam, color = 'blue');
set(a,'LineWidth',2);
xlabel('Slope', fontsize = 13, fontweight = 'bold');
ylabel('etam', fontsize = 13, fontweight = 'bold');
title('Moisture Damping Coef. vs. Fuel Load (Kg/m^2)', fontsize = 13, fontweight = 'bold');
grid on;
%ylim([0, max(ros)]);

%subplot(3, 3, 9);
nexttile
a = plot(x, rtemp1, color = 'blue');
set(a,'LineWidth',2);
xlabel('Slope', fontsize = 13, fontweight = 'bold');
ylabel('FMC/FMC Extinction', fontsize = 13, fontweight = 'bold');
title('FMC/FMC Extinction vs. Fuel Load (Kg/m^2)', fontsize = 13, fontweight = 'bold');
grid on;
%ylim([0, max(ros)]);

sgtitle('Fuel Load (Kg/m^2) vs. ROS, ir, qig, phiw, phis, gamma, xifr, etam, rtemp1', fontsize = 18, fontweight = 'bold')
%% Testing the Fuel Moisture no slope no wind
x = linspace(0, .12, 1000);
[ir, qig, phiw, phis, gamma, xifr, etam, rtemp1, ros] = ros_rothermel(fuel(1), 0, 0, x);
x = x .* 100;

% Rate of spread
%subplot(3, 3, 1);
figure('Renderer', 'painters', 'Position', [10 10 800 600])
tiledlayout(3, 3, 'TileSpacing', 'compact', 'Padding', 'none');
nexttile
a = plot(x, ros, color = 'blue');
set(a,'LineWidth',2);
%xlabel('Fuel Moisture %', fontsize = 13, fontweight = 'bold');
ylabel('Rate of Spread', fontsize = 13, fontweight = 'bold');
title('ROS vs. Fuel Moisture', fontsize = 13, fontweight = 'bold');
grid on;
%ylim([0, max(ros)]);

% IR radiative component
%subplot(3, 3, 2);
nexttile
a = plot(x, ir, color = 'blue');
set(a,'LineWidth',2);
%xlabel('Fuel Moisture %', fontsize = 13, fontweight = 'bold');
ylabel('IR', fontsize = 13, fontweight = 'bold');
title('IR vs. Fuel Moisture', fontsize = 13, fontweight = 'bold');
grid on;
%ylim([0, max(ros)]);

% Radiative component
%subplot(3, 3, 3);
nexttile
a = plot(x, qig, color = 'blue');
set(a,'LineWidth',2);
%xlabel('Fuel Moisture %', fontsize = 13, fontweight = 'bold');
ylabel('Q_{ig} btu/lb', fontsize = 13, fontweight = 'bold');
title('Qig vs. Fuel Moisture', fontsize = 13, fontweight = 'bold');
grid on;
%ylim([0, max(ros)]);
 
% Flame base radiation
%subplot(3, 3, 4);
nexttile
a = plot(x, phiw, color = 'blue');
set(a,'LineWidth',2);
%xlabel('Fuel Moisture %', fontsize = 13, fontweight = 'bold');
ylabel('Phi_w', fontsize = 13, fontweight = 'bold');
title('Phi_w vs. Fuel Moisture', fontsize = 13, fontweight = 'bold');
grid on;
%ylim([0, max(ros)]);

%subplot(3, 3, 5);
nexttile
a = plot(x, phis, color = 'blue');
set(a,'LineWidth',2);
%xlabel('Fuel Moisture %', fontsize = 13, fontweight = 'bold');
ylabel('Phi_S', fontsize = 13, fontweight = 'bold');
title('Phi_s vs. Fuel Moisture', fontsize = 13, fontweight = 'bold');
grid on;
%ylim([0, max(ros)]);


%subplot(3, 3, 6);
nexttile
a = plot(x, gamma, color = 'blue');
set(a,'LineWidth',2);
%xlabel('Fuel Moisture %', fontsize = 13, fontweight = 'bold');
ylabel('Gamma (1/min) ', fontsize = 13, fontweight = 'bold');
title('Gamma vs. Fuel Moisture', fontsize = 13, fontweight = 'bold');
grid on;
%ylim([0, max(ros)]);

%subplot(3, 3, 7);
nexttile
a = plot(x, xifr, color = 'blue');
set(a,'LineWidth',2);
xlabel('Fuel Moisture %', fontsize = 13, fontweight = 'bold');
ylabel('xifr', fontsize = 13, fontweight = 'bold');
title('Propagating Flux Ratio vs. Fuel Moisture', fontsize = 13, fontweight = 'bold');
grid on;
%ylim([0, max(ros)]);

%subplot(3, 3, 8);
nexttile
a = plot(x, etam, color = 'blue');
set(a,'LineWidth',2);
xlabel('Fuel Moisture %', fontsize = 13, fontweight = 'bold');
ylabel('etam', fontsize = 13, fontweight = 'bold');
title('Moisture Damping Coef. vs. Fuel Moisture', fontsize = 13, fontweight = 'bold');
grid on;
%ylim([0, max(ros)]);

%subplot(3, 3, 9);
nexttile
a = plot(x, rtemp1, color = 'blue');
set(a,'LineWidth',2);
xlabel('Fuel Moisture %', fontsize = 13, fontweight = 'bold');
ylabel('FMC/FMC Extinction', fontsize = 13, fontweight = 'bold');
title('FMC/FMC Extinction vs. Fuel Moisture', fontsize = 13, fontweight = 'bold');
grid on;
%ylim([0, max(ros)]);

sgtitle('Fuel Moisture % vs. ROS, ir, qig, phiw, phis, gamma, xifr, etam, rtemp1', fontsize = 18, fontweight = 'bold')
%% Testing the SAVR
x = linspace(100, 5000, 1000);
[ir, qig, phiw, phis, gamma, xifr, etam, rtemp1, ros] = ros_rothermel(fuel(1), 1.5, tand(3), 0.03, x);
x = x .* 100;
% Rate of spread
%subplot(3, 3, 1);
figure('Renderer', 'painters', 'Position', [10 10 800 600])
tiledlayout(3, 3, 'TileSpacing', 'compact', 'Padding', 'none');
nexttile
a = plot(x, ros, color = 'blue');
set(a,'LineWidth',2);
%xlabel('SAVR (1/ft)', fontsize = 13, fontweight = 'bold');
ylabel('Rate of Spread', fontsize = 13, fontweight = 'bold');
title('ROS vs. SAVR (1/ft)', fontsize = 13, fontweight = 'bold');
grid on;
%ylim([0, max(ros)]);

% IR radiative component
%subplot(3, 3, 2);
nexttile
a = plot(x, ir, color = 'blue');
set(a,'LineWidth',2);
%xlabel('SAVR (1/ft)', fontsize = 13, fontweight = 'bold');
ylabel('IR', fontsize = 13, fontweight = 'bold');
title('IR vs. SAVR (1/ft)', fontsize = 13, fontweight = 'bold');
grid on;
%ylim([0, max(ros)]);

% Radiative component
%subplot(3, 3, 3);
nexttile
a = plot(x, qig, color = 'blue');
set(a,'LineWidth',2);
%xlabel('SAVR (1/ft)', fontsize = 13, fontweight = 'bold');
ylabel('Q_{ig} btu/lb', fontsize = 13, fontweight = 'bold');
title('Qig vs. SAVR (1/ft)', fontsize = 13, fontweight = 'bold');
grid on;
%ylim([0, max(ros)]);
 
% Flame base radiation
%subplot(3, 3, 4);
nexttile
a = plot(x, phiw, color = 'blue');
set(a,'LineWidth',2);
%xlabel('SAVR (1/ft)', fontsize = 13, fontweight = 'bold');
ylabel('Phi_w', fontsize = 13, fontweight = 'bold');
title('Phi_w vs. SAVR (1/ft)', fontsize = 13, fontweight = 'bold');
grid on;
%ylim([0, max(ros)]);

%subplot(3, 3, 5);
nexttile
a = plot(x, phis, color = 'blue');
set(a,'LineWidth',2);
%xlabel('SAVR (1/ft)', fontsize = 13, fontweight = 'bold');
ylabel('Phi_S', fontsize = 13, fontweight = 'bold');
title('Phi_s vs. SAVR (1/ft)', fontsize = 13, fontweight = 'bold');
grid on;
%ylim([0, max(ros)]);


%subplot(3, 3, 6);
nexttile
a = plot(x, gamma, color = 'blue');
set(a,'LineWidth',2);
%xlabel('SAVR (1/ft)', fontsize = 13, fontweight = 'bold');
ylabel('Gamma (1/min) ', fontsize = 13, fontweight = 'bold');
title('Gamma vs. SAVR (1/ft)', fontsize = 13, fontweight = 'bold');
grid on;
%ylim([0, max(ros)]);

%subplot(3, 3, 7);
nexttile
a = plot(x, xifr, color = 'blue');
set(a,'LineWidth',2);
xlabel('SAVR (1/ft)', fontsize = 13, fontweight = 'bold');
ylabel('xifr', fontsize = 13, fontweight = 'bold');
title('Propagating Flux Ratio vs. SAVR (1/ft)', fontsize = 13, fontweight = 'bold');
grid on;
%ylim([0, max(ros)]);

%subplot(3, 3, 8);
nexttile
a = plot(x, etam, color = 'blue');
set(a,'LineWidth',2);
xlabel('SAVR (1/ft)', fontsize = 13, fontweight = 'bold');
ylabel('etam', fontsize = 13, fontweight = 'bold');
title('Moisture Damping Coef. vs. SAVR (1/ft)', fontsize = 13, fontweight = 'bold');
grid on;
%ylim([0, max(ros)]);

%subplot(3, 3, 9);
nexttile
a = plot(x, rtemp1, color = 'blue');
set(a,'LineWidth',2);
xlabel('SAVR (1/ft)', fontsize = 13, fontweight = 'bold');
ylabel('FMC/FMC Extinction', fontsize = 13, fontweight = 'bold');
title('FMC/FMC Extinction vs. SAVR (1/ft)', fontsize = 13, fontweight = 'bold');
grid on;
%ylim([0, max(ros)]);

sgtitle('SAVR (1/ft) vs. ROS, ir, qig, phiw, phis, gamma, xifr, etam, rtemp1', fontsize = 18, fontweight = 'bold')
