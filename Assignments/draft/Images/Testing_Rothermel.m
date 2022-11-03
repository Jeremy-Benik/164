% This code will be testing the many balbi parameters to see how sensitive
% the model is to changes. As for what I will change, I will first look at
% the code and determing what parameters in the paper I could possibly
% change

fuels_mod;
%ros_balbi(fuel(1), 1.5, tand(3), 0.03)
%% Testing just the base model
ros_rothermel(fuel(1), 1.5, tand(3), 0.03)

%% Testing the Fuel Moisture
x = linspace(0, 1, 1000);
[ir, qig, phiw, phis, gamma, xifr, etam, rtemp1, ros] = ros_rothermel(fuel(1), 1.5, tand(3), x);
x = x .* 100;

% Rate of spread
subplot(3, 3, 1);
plot(x, ros, color = 'red');
xlabel('Fuel Moisture %', fontsize = 12, fontweight = 'bold');
ylabel('Rate of Spread', fontsize = 12, fontweight = 'bold');
title('ROS vs. Fuel Moisture Values', fontsize = 15, fontweight = 'bold');
grid on;
%ylim([0, max(ros)]);

% IR radiative component
subplot(3, 3, 2);
plot(x, ir, color = 'blue');
xlabel('Fuel Moisture %', fontsize = 12, fontweight = 'bold');
ylabel('Reaction Intensity btu/ft^2 min (IR)', fontsize = 12, fontweight = 'bold');
title('IR vs. Fuel Moisture Values', fontsize = 15, fontweight = 'bold');
grid on;
%ylim([0, max(ros)]);

% Radiative component
subplot(3, 3, 3);
plot(x, qig, color = 'magenta');
xlabel('Fuel Moisture %', fontsize = 12, fontweight = 'bold');
ylabel('Heat of Preignition (Qig) btu/lb', fontsize = 12, fontweight = 'bold');
title('Qig vs. Fuel Moisture Values', fontsize = 15, fontweight = 'bold');
grid on;
%ylim([0, max(ros)]);
 
% Flame base radiation
subplot(3, 3, 4);
plot(x, phiw, color = 'green');
xlabel('Fuel Moisture %', fontsize = 12, fontweight = 'bold');
ylabel('Wind Coefficient (Phiw)', fontsize = 12, fontweight = 'bold');
title('Wind Coefficient vs. Fuel Moisture Values', fontsize = 15, fontweight = 'bold');
grid on;
%ylim([0, max(ros)]);

subplot(3, 3, 5);
plot(x, phis, color = 'black');
xlabel('Fuel Moisture %', fontsize = 12, fontweight = 'bold');
ylabel('Slope Coefficient (PhiS)', fontsize = 12, fontweight = 'bold');
title('Slope Coefficient vs. Fuel Moisture Values', fontsize = 15, fontweight = 'bold');
grid on;
%ylim([0, max(ros)]);


subplot(3, 3, 6);
plot(x, gamma, color = 'cyan');
xlabel('Fuel Moisture %', fontsize = 12, fontweight = 'bold');
ylabel('Optimum Reaction Velocity (gamma) (1/min) ', fontsize = 12, fontweight = 'bold');
title('Optimum Reacton Velocity vs. Fuel Moisture Values', fontsize = 15, fontweight = 'bold');
grid on;
%ylim([0, max(ros)]);

subplot(3, 3, 7);
plot(x, xifr, color = '#E8B320');
xlabel('Fuel Moisture %', fontsize = 12, fontweight = 'bold');
ylabel('Propagating Flux Ratio (xifr)', fontsize = 12, fontweight = 'bold');
title('Propagating Flux Ratio vs. Fuel Moisture Values', fontsize = 15, fontweight = 'bold');
grid on;
%ylim([0, max(ros)]);

subplot(3, 3, 8);
plot(x, etam, color = '#26720F');
xlabel('Fuel Moisture %', fontsize = 12, fontweight = 'bold');
ylabel('Moisture Damping Coefficient (etam)', fontsize = 12, fontweight = 'bold');
title('Moisture Damping Coefficient vs. Fuel Moisture Values', fontsize = 15, fontweight = 'bold');
grid on;
%ylim([0, max(ros)]);

subplot(3, 3, 9);
plot(x, rtemp1, color = '#970000');
xlabel('Fuel Moisture %', fontsize = 12, fontweight = 'bold');
ylabel('FMC / Fuel Moisture of Extinction', fontsize = 12, fontweight = 'bold');
title('FMC / Fuel Moisture of Extinction vs. Fuel Moisture Values', fontsize = 15, fontweight = 'bold');
grid on;
%ylim([0, max(ros)]);

sgtitle('Fuel Moisture % vs. ROS, ir, qig, phiw, phis, gamma, xifr, etam, rtemp1', fontsize = 18, fontweight = 'bold')
%% Testing the Wind Speed
x = linspace(0, 20, 1000);
[ir, qig, phiw, phis, gamma, xifr, etam, rtemp1, ros] = ros_rothermel(fuel(1), x, tand(3), 0.03);


% Rate of spread
subplot(3, 3, 1);
plot(x, ros, color = 'red');
xlabel('Wind Speed', fontsize = 12, fontweight = 'bold');
ylabel('Rate of Spread', fontsize = 12, fontweight = 'bold');
title('ROS vs. Wind Speed (m/s)', fontsize = 15, fontweight = 'bold');
grid on;
%ylim([0, max(ros)]);

% IR radiative component
subplot(3, 3, 2);
plot(x, ir, color = 'blue');
xlabel('Wind Speed', fontsize = 12, fontweight = 'bold');
ylabel('Reaction Intensity btu/ft^2 min (IR)', fontsize = 12, fontweight = 'bold');
title('IR vs. Wind Speed (m/s)', fontsize = 15, fontweight = 'bold');
grid on;
%ylim([0, max(ros)]);

% Radiative component
subplot(3, 3, 3);
plot(x, qig, color = 'magenta');
xlabel('Wind Speed', fontsize = 12, fontweight = 'bold');
ylabel('Heat of Preignition (Qig) btu/lb', fontsize = 12, fontweight = 'bold');
title('Qig vs. Wind Speed (m/s)', fontsize = 15, fontweight = 'bold');
grid on;
%ylim([0, max(ros)]);
 
% Flame base radiation
subplot(3, 3, 4);
plot(x, phiw, color = 'green');
xlabel('Wind Speed', fontsize = 12, fontweight = 'bold');
ylabel('Wind Coefficient (Phiw)', fontsize = 12, fontweight = 'bold');
title('Wind Coefficient vs. Wind Speed (m/s)', fontsize = 15, fontweight = 'bold');
grid on;
%ylim([0, max(ros)]);

subplot(3, 3, 5);
plot(x, phis, color = 'black');
xlabel('Wind Speed', fontsize = 12, fontweight = 'bold');
ylabel('Slope Coefficient (PhiS)', fontsize = 12, fontweight = 'bold');
title('Slope Coefficient vs. Wind Speed (m/s)', fontsize = 15, fontweight = 'bold');
grid on;
%ylim([0, max(ros)]);


subplot(3, 3, 6);
plot(x, gamma, color = 'cyan');
xlabel('Wind Speed', fontsize = 12, fontweight = 'bold');
ylabel('Optimum Reaction Velocity (gamma) (1/min) ', fontsize = 12, fontweight = 'bold');
title('Optimum Reacton Velocity vs. Wind Speed (m/s)', fontsize = 15, fontweight = 'bold');
grid on;
%ylim([0, max(ros)]);

subplot(3, 3, 7);
plot(x, xifr, color = '#E8B320');
xlabel('Wind Speed', fontsize = 12, fontweight = 'bold');
ylabel('Propagating Flux Ratio (xifr)', fontsize = 12, fontweight = 'bold');
title('Propagating Flux Ratio vs. Wind Speed (m/s)', fontsize = 15, fontweight = 'bold');
grid on;
%ylim([0, max(ros)]);

subplot(3, 3, 8);
plot(x, etam, color = '#26720F');
xlabel('Wind Speed', fontsize = 12, fontweight = 'bold');
ylabel('Moisture Damping Coefficient (etam)', fontsize = 12, fontweight = 'bold');
title('Moisture Damping Coefficient vs. Wind Speed (m/s)', fontsize = 15, fontweight = 'bold');
grid on;
%ylim([0, max(ros)]);

subplot(3, 3, 9);
plot(x, rtemp1, color = '#970000');
xlabel('Wind Speed', fontsize = 12, fontweight = 'bold');
ylabel('FMC / Fuel Moisture of Extinction', fontsize = 12, fontweight = 'bold');
title('FMC / Fuel Moisture of Extinction vs. Wind Speed (m/s)', fontsize = 15, fontweight = 'bold');
grid on;
%ylim([0, max(ros)]);

sgtitle('Wind Speed vs. ROS, ir, qig, phiw, phis, gamma, xifr, etam, rtemp1', fontsize = 18, fontweight = 'bold')
%% Testing the Slope
x = linspace(0, 80, 1000);
[ir, qig, phiw, phis, gamma, xifr, etam, rtemp1, ros] = ros_rothermel(fuel(1), 1.5, tand(x), 0.03);


% Rate of spread
subplot(3, 3, 1);
plot(x, ros, color = 'red');
xlabel('Slope (Degrees)', fontsize = 12, fontweight = 'bold');
ylabel('Rate of Spread', fontsize = 12, fontweight = 'bold');
title('ROS vs. Slope (Degrees) ', fontsize = 15, fontweight = 'bold');
grid on;
%ylim([0, max(ros)]);

% IR radiative component
subplot(3, 3, 2);
plot(x, ir, color = 'blue');
xlabel('Slope (Degrees)', fontsize = 12, fontweight = 'bold');
ylabel('Reaction Intensity btu/ft^2 min (IR)', fontsize = 12, fontweight = 'bold');
title('IR vs. Slope (Degrees) ', fontsize = 15, fontweight = 'bold');
grid on;
%ylim([0, max(ros)]);

% Radiative component
subplot(3, 3, 3);
plot(x, qig, color = 'magenta');
xlabel('Slope (Degrees)', fontsize = 12, fontweight = 'bold');
ylabel('Heat of Preignition (Qig) btu/lb', fontsize = 12, fontweight = 'bold');
title('Qig vs. Slope (Degrees) ', fontsize = 15, fontweight = 'bold');
grid on;
%ylim([0, max(ros)]);
 
% Flame base radiation
subplot(3, 3, 4);
plot(x, phiw, color = 'green');
xlabel('Slope (Degrees)', fontsize = 12, fontweight = 'bold');
ylabel('Wind Coefficient (Phiw)', fontsize = 12, fontweight = 'bold');
title('Wind Coefficient vs. Slope (Degrees) ', fontsize = 15, fontweight = 'bold');
grid on;
%ylim([0, max(ros)]);

subplot(3, 3, 5);
plot(x, phis, color = 'black');
xlabel('Slope (Degrees)', fontsize = 12, fontweight = 'bold');
ylabel('Slope Coefficient (PhiS)', fontsize = 12, fontweight = 'bold');
title('Slope Coefficient vs. Slope (Degrees) ', fontsize = 15, fontweight = 'bold');
grid on;
%ylim([0, max(ros)]);


subplot(3, 3, 6);
plot(x, gamma, color = 'cyan');
xlabel('Slope (Degrees)', fontsize = 12, fontweight = 'bold');
ylabel('Optimum Reaction Velocity (gamma) (1/min) ', fontsize = 12, fontweight = 'bold');
title('Optimum Reacton Velocity vs. Slope (Degrees) ', fontsize = 15, fontweight = 'bold');
grid on;
%ylim([0, max(ros)]);

subplot(3, 3, 7);
plot(x, xifr, color = '#E8B320');
xlabel('Slope (Degrees)', fontsize = 12, fontweight = 'bold');
ylabel('Propagating Flux Ratio (xifr)', fontsize = 12, fontweight = 'bold');
title('Propagating Flux Ratio vs. Slope (Degrees) ', fontsize = 15, fontweight = 'bold');
grid on;
%ylim([0, max(ros)]);

subplot(3, 3, 8);
plot(x, etam, color = '#26720F');
xlabel('Slope (Degrees)', fontsize = 12, fontweight = 'bold');
ylabel('Moisture Damping Coefficient (etam)', fontsize = 12, fontweight = 'bold');
title('Moisture Damping Coefficient vs. Slope (Degrees) ', fontsize = 15, fontweight = 'bold');
grid on;
%ylim([0, max(ros)]);

subplot(3, 3, 9);
plot(x, rtemp1, color = '#970000');
xlabel('Slope (Degrees)', fontsize = 12, fontweight = 'bold');
ylabel('FMC / Fuel Moisture of Extinction', fontsize = 12, fontweight = 'bold');
title('FMC / Fuel Moisture of Extinction vs. Slope (Degrees) ', fontsize = 15, fontweight = 'bold');
grid on;
%ylim([0, max(ros)]);

sgtitle('Slope (Degrees) vs. ROS, ir, qig, phiw, phis, gamma, xifr, etam, rtemp1', fontsize = 18, fontweight = 'bold')
%% Testing the Fuel Height
x = linspace(0, 20, 1000);
[ir, qig, phiw, phis, gamma, xifr, etam, rtemp1, ros] = ros_rothermel(fuel(1), 1.5, tand(x), 0.03, x);


% Rate of spread
subplot(3, 3, 1);
plot(x, ros, color = 'red');
xlabel('Fuel Height (m)', fontsize = 12, fontweight = 'bold');
ylabel('Rate of Spread', fontsize = 12, fontweight = 'bold');
title('ROS vs. Fuel Height (m) ', fontsize = 15, fontweight = 'bold');
grid on;
%ylim([0, max(ros)]);

% IR radiative component
subplot(3, 3, 2);
plot(x, ir, color = 'blue');
xlabel('Fuel Height (m)', fontsize = 12, fontweight = 'bold');
ylabel('Reaction Intensity btu/ft^2 min (IR)', fontsize = 12, fontweight = 'bold');
title('IR vs. Fuel Height (m) ', fontsize = 15, fontweight = 'bold');
grid on;
%ylim([0, max(ros)]);

% Radiative component
subplot(3, 3, 3);
plot(x, qig, color = 'magenta');
xlabel('Fuel Height (m)', fontsize = 12, fontweight = 'bold');
ylabel('Heat of Preignition (Qig) btu/lb', fontsize = 12, fontweight = 'bold');
title('Qig vs. Fuel Height (m) ', fontsize = 15, fontweight = 'bold');
grid on;
%ylim([0, max(ros)]);
 
% Flame base radiation
subplot(3, 3, 4);
plot(x, phiw, color = 'green');
xlabel('Fuel Height (m)', fontsize = 12, fontweight = 'bold');
ylabel('Wind Coefficient (Phiw)', fontsize = 12, fontweight = 'bold');
title('Wind Coefficient vs. Fuel Height (m) ', fontsize = 15, fontweight = 'bold');
grid on;
%ylim([0, max(ros)]);

subplot(3, 3, 5);
plot(x, phis, color = 'black');
xlabel('Fuel Height (m)', fontsize = 12, fontweight = 'bold');
ylabel('Slope Coefficient (PhiS)', fontsize = 12, fontweight = 'bold');
title('Slope Coefficient vs. Fuel Height (m) ', fontsize = 15, fontweight = 'bold');
grid on;
%ylim([0, max(ros)]);


subplot(3, 3, 6);
plot(x, gamma, color = 'cyan');
xlabel('Fuel Height (m)', fontsize = 12, fontweight = 'bold');
ylabel('Optimum Reaction Velocity (gamma) (1/min) ', fontsize = 12, fontweight = 'bold');
title('Optimum Reacton Velocity vs. Fuel Height (m) ', fontsize = 15, fontweight = 'bold');
grid on;
%ylim([0, max(ros)]);

subplot(3, 3, 7);
plot(x, xifr, color = '#E8B320');
xlabel('Fuel Height (m)', fontsize = 12, fontweight = 'bold');
ylabel('Propagating Flux Ratio (xifr)', fontsize = 12, fontweight = 'bold');
title('Propagating Flux Ratio vs. Fuel Height (m) ', fontsize = 15, fontweight = 'bold');
grid on;
%ylim([0, max(ros)]);

subplot(3, 3, 8);
plot(x, etam, color = '#26720F');
xlabel('Fuel Height (m)', fontsize = 12, fontweight = 'bold');
ylabel('Moisture Damping Coefficient (etam)', fontsize = 12, fontweight = 'bold');
title('Moisture Damping Coefficient vs. Fuel Height (m) ', fontsize = 15, fontweight = 'bold');
grid on;
%ylim([0, max(ros)]);

subplot(3, 3, 9);
plot(x, rtemp1, color = '#970000');
xlabel('Fuel Height (m)', fontsize = 12, fontweight = 'bold');
ylabel('FMC / Fuel Moisture of Extinction', fontsize = 12, fontweight = 'bold');
title('FMC / Fuel Moisture of Extinction vs. Fuel Height (m) ', fontsize = 15, fontweight = 'bold');
grid on;
%ylim([0, max(ros)]);

sgtitle('Fuel Height (m) vs. ROS, ir, qig, phiw, phis, gamma, xifr, etam, rtemp1', fontsize = 18, fontweight = 'bold')

%% Testing the Fuel Load
x = linspace(0, 0.969, 1000);
[ir, qig, phiw, phis, gamma, xifr, etam, rtemp1, ros] = ros_rothermel(fuel(1), 1.5, tand(x), 0.03, x);


% Rate of spread
subplot(3, 3, 1);
plot(x, ros, color = 'red');
xlabel('Dead Fuel Load (Kg/m^2)', fontsize = 12, fontweight = 'bold');
ylabel('Rate of Spread', fontsize = 12, fontweight = 'bold');
title('ROS vs. Fuel Load (Kg/m^2) ', fontsize = 15, fontweight = 'bold');
grid on;
%ylim([0, max(ros)]);

% IR radiative component
subplot(3, 3, 2);
plot(x, ir, color = 'blue');
xlabel('Dead Fuel Load (Kg/m^2)', fontsize = 12, fontweight = 'bold');
ylabel('Reaction Intensity btu/ft^2 min (IR)', fontsize = 12, fontweight = 'bold');
title('IR vs. Fuel Load (Kg/m^2) ', fontsize = 15, fontweight = 'bold');
grid on;
%ylim([0, max(ros)]);

% Radiative component
subplot(3, 3, 3);
plot(x, qig, color = 'magenta');
xlabel('Dead Fuel Load (Kg/m^2)', fontsize = 12, fontweight = 'bold');
ylabel('Heat of Preignition (Qig) btu/lb', fontsize = 12, fontweight = 'bold');
title('Qig vs. Fuel Load (Kg/m^2) ', fontsize = 15, fontweight = 'bold');
grid on;
%ylim([0, max(ros)]);
 
% Flame base radiation
subplot(3, 3, 4);
plot(x, phiw, color = 'green');
xlabel('Dead Fuel Load (Kg/m^2)', fontsize = 12, fontweight = 'bold');
ylabel('Wind Coefficient (Phiw)', fontsize = 12, fontweight = 'bold');
title('Wind Coefficient vs. Fuel Load (Kg/m^2) ', fontsize = 15, fontweight = 'bold');
grid on;
%ylim([0, max(ros)]);

subplot(3, 3, 5);
plot(x, phis, color = 'black');
xlabel('Dead Fuel Load (Kg/m^2)', fontsize = 12, fontweight = 'bold');
ylabel('Slope Coefficient (PhiS)', fontsize = 12, fontweight = 'bold');
title('Slope Coefficient vs. Fuel Load (Kg/m^2) ', fontsize = 15, fontweight = 'bold');
grid on;
%ylim([0, max(ros)]);


subplot(3, 3, 6);
plot(x, gamma, color = 'cyan');
xlabel('Dead Fuel Load (Kg/m^2)', fontsize = 12, fontweight = 'bold');
ylabel('Optimum Reaction Velocity (gamma) (1/min) ', fontsize = 12, fontweight = 'bold');
title('Optimum Reacton Velocity vs. Fuel Load (Kg/m^2) ', fontsize = 15, fontweight = 'bold');
grid on;
%ylim([0, max(ros)]);

subplot(3, 3, 7);
plot(x, xifr, color = '#E8B320');
xlabel('Dead Fuel Load (Kg/m^2)', fontsize = 12, fontweight = 'bold');
ylabel('Propagating Flux Ratio (xifr)', fontsize = 12, fontweight = 'bold');
title('Propagating Flux Ratio vs. Fuel Load (Kg/m^2) ', fontsize = 15, fontweight = 'bold');
grid on;
%ylim([0, max(ros)]);

subplot(3, 3, 8);
plot(x, etam, color = '#26720F');
xlabel('Dead Fuel Load (Kg/m^2)', fontsize = 12, fontweight = 'bold');
ylabel('Moisture Damping Coefficient (etam)', fontsize = 12, fontweight = 'bold');
title('Moisture Damping Coefficient vs. Fuel Load (Kg/m^2) ', fontsize = 15, fontweight = 'bold');
grid on;
%ylim([0, max(ros)]);

subplot(3, 3, 9);
plot(x, rtemp1, color = '#970000');
xlabel('Dead Fuel Load (Kg/m^2)', fontsize = 12, fontweight = 'bold');
ylabel('FMC / Fuel Moisture of Extinction', fontsize = 12, fontweight = 'bold');
title('FMC / Fuel Moisture of Extinction vs. Fuel Load (Kg/m^2) ', fontsize = 15, fontweight = 'bold');
grid on;
%ylim([0, max(ros)]);

sgtitle('Dead Fuel Load (Kg/m^2) vs. ROS, ir, qig, phiw, phis, gamma, xifr, etam, rtemp1', fontsize = 18, fontweight = 'bold')
%% Testing the Fuel Moisture no slope no wind
x = linspace(0, .12, 1000);
[ir, qig, phiw, phis, gamma, xifr, etam, rtemp1, ros] = ros_rothermel(fuel(1), 0, 0, x);
x = x .* 100;

% Rate of spread
subplot(3, 3, 1);
plot(x, ros, color = 'red');
xlabel('Fuel Moisture %', fontsize = 12, fontweight = 'bold');
ylabel('Rate of Spread', fontsize = 12, fontweight = 'bold');
title('ROS vs. Fuel Moisture Values', fontsize = 15, fontweight = 'bold');
grid on;
%ylim([0, max(ros)]);

% IR radiative component
subplot(3, 3, 2);
plot(x, ir, color = 'blue');
xlabel('Fuel Moisture %', fontsize = 12, fontweight = 'bold');
ylabel('Reaction Intensity btu/ft^2 min (IR)', fontsize = 12, fontweight = 'bold');
title('IR vs. Fuel Moisture Values', fontsize = 15, fontweight = 'bold');
grid on;
%ylim([0, max(ros)]);

% Radiative component
subplot(3, 3, 3);
plot(x, qig, color = 'magenta');
xlabel('Fuel Moisture %', fontsize = 12, fontweight = 'bold');
ylabel('Heat of Preignition (Qig) btu/lb', fontsize = 12, fontweight = 'bold');
title('Qig vs. Fuel Moisture Values', fontsize = 15, fontweight = 'bold');
grid on;
%ylim([0, max(ros)]);
 
% Flame base radiation
subplot(3, 3, 4);
plot(x, phiw, color = 'green');
xlabel('Fuel Moisture %', fontsize = 12, fontweight = 'bold');
ylabel('Wind Coefficient (Phiw)', fontsize = 12, fontweight = 'bold');
title('Wind Coefficient vs. Fuel Moisture Values', fontsize = 15, fontweight = 'bold');
grid on;
%ylim([0, max(ros)]);

subplot(3, 3, 5);
plot(x, phis, color = 'black');
xlabel('Fuel Moisture %', fontsize = 12, fontweight = 'bold');
ylabel('Slope Coefficient (PhiS)', fontsize = 12, fontweight = 'bold');
title('Slope Coefficient vs. Fuel Moisture Values', fontsize = 15, fontweight = 'bold');
grid on;
%ylim([0, max(ros)]);


subplot(3, 3, 6);
plot(x, gamma, color = 'cyan');
xlabel('Fuel Moisture %', fontsize = 12, fontweight = 'bold');
ylabel('Optimum Reaction Velocity (gamma) (1/min) ', fontsize = 12, fontweight = 'bold');
title('Optimum Reacton Velocity vs. Fuel Moisture Values', fontsize = 15, fontweight = 'bold');
grid on;
%ylim([0, max(ros)]);

subplot(3, 3, 7);
plot(x, xifr, color = '#E8B320');
xlabel('Fuel Moisture %', fontsize = 12, fontweight = 'bold');
ylabel('Propagating Flux Ratio (xifr)', fontsize = 12, fontweight = 'bold');
title('Propagating Flux Ratio vs. Fuel Moisture Values', fontsize = 15, fontweight = 'bold');
grid on;
%ylim([0, max(ros)]);

subplot(3, 3, 8);
plot(x, etam, color = '#26720F');
xlabel('Fuel Moisture %', fontsize = 12, fontweight = 'bold');
ylabel('Moisture Damping Coefficient (etam)', fontsize = 12, fontweight = 'bold');
title('Moisture Damping Coefficient vs. Fuel Moisture Values', fontsize = 15, fontweight = 'bold');
grid on;
%ylim([0, max(ros)]);

subplot(3, 3, 9);
plot(x, rtemp1, color = '#970000');
xlabel('Fuel Moisture %', fontsize = 12, fontweight = 'bold');
ylabel('FMC / Fuel Moisture of Extinction', fontsize = 12, fontweight = 'bold');
title('FMC / Fuel Moisture of Extinction vs. Fuel Moisture Values', fontsize = 15, fontweight = 'bold');
grid on;
%ylim([0, max(ros)]);

sgtitle('Fuel Moisture % vs. ROS, ir, qig, phiw, phis, gamma, xifr, etam, rtemp1', fontsize = 18, fontweight = 'bold')
%% Testing the SAVR
x = linspace(100, 5000, 1000);
[ir, qig, phiw, phis, gamma, xifr, etam, rtemp1, ros] = ros_rothermel(fuel(1), 1.5, tand(3), 0.03, x);
x = x .* 100;

% Rate of spread
subplot(3, 3, 1);
plot(x, ros, color = 'red');
xlabel('SAVR (1/ft)', fontsize = 12, fontweight = 'bold');
ylabel('Rate of Spread', fontsize = 12, fontweight = 'bold');
title('ROS vs. SAVR (1/ft)', fontsize = 15, fontweight = 'bold');
grid on;
%ylim([0, max(ros)]);

% IR radiative component
subplot(3, 3, 2);
plot(x, ir, color = 'blue');
xlabel('SAVR (1/ft)', fontsize = 12, fontweight = 'bold');
ylabel('Reaction Intensity btu/ft^2 min (IR)', fontsize = 12, fontweight = 'bold');
title('IR vs. SAVR (1/ft)', fontsize = 15, fontweight = 'bold');
grid on;
%ylim([0, max(ros)]);

% Radiative component
subplot(3, 3, 3);
plot(x, qig, color = 'magenta');
xlabel('SAVR (1/ft)', fontsize = 12, fontweight = 'bold');
ylabel('Heat of Preignition (Qig) btu/lb', fontsize = 12, fontweight = 'bold');
title('Qig vs. SAVR (1/ft)', fontsize = 15, fontweight = 'bold');
grid on;
%ylim([0, max(ros)]);
 
% Flame base radiation
subplot(3, 3, 4);
plot(x, phiw, color = 'green');
xlabel('SAVR (1/ft)', fontsize = 12, fontweight = 'bold');
ylabel('Wind Coefficient (Phiw)', fontsize = 12, fontweight = 'bold');
title('Wind Coefficient vs. SAVR (1/ft)', fontsize = 15, fontweight = 'bold');
grid on;
%ylim([0, max(ros)]);

subplot(3, 3, 5);
plot(x, phis, color = 'black');
xlabel('SAVR (1/ft)', fontsize = 12, fontweight = 'bold');
ylabel('Slope Coefficient (PhiS)', fontsize = 12, fontweight = 'bold');
title('Slope Coefficient vs. SAVR (1/ft)', fontsize = 15, fontweight = 'bold');
grid on;
%ylim([0, max(ros)]);


subplot(3, 3, 6);
plot(x, gamma, color = 'cyan');
xlabel('SAVR (1/ft)', fontsize = 12, fontweight = 'bold');
ylabel('Optimum Reaction Velocity (gamma) (1/min) ', fontsize = 12, fontweight = 'bold');
title('Optimum Reacton Velocity vs. SAVR (1/ft)', fontsize = 15, fontweight = 'bold');
grid on;
%ylim([0, max(ros)]);

subplot(3, 3, 7);
plot(x, xifr, color = '#E8B320');
xlabel('SAVR (1/ft)', fontsize = 12, fontweight = 'bold');
ylabel('Propagating Flux Ratio (xifr)', fontsize = 12, fontweight = 'bold');
title('Propagating Flux Ratio vs. SAVR (1/ft)', fontsize = 15, fontweight = 'bold');
grid on;
%ylim([0, max(ros)]);

subplot(3, 3, 8);
plot(x, etam, color = '#26720F');
xlabel('SAVR (1/ft)', fontsize = 12, fontweight = 'bold');
ylabel('Moisture Damping Coefficient (etam)', fontsize = 12, fontweight = 'bold');
title('Moisture Damping Coefficient vs. SAVR (1/ft)', fontsize = 15, fontweight = 'bold');
grid on;
%ylim([0, max(ros)]);

subplot(3, 3, 9);
plot(x, rtemp1, color = '#970000');
xlabel('SAVR (1/ft)', fontsize = 12, fontweight = 'bold');
ylabel('FMC / Fuel Moisture of Extinction', fontsize = 12, fontweight = 'bold');
title('FMC / Fuel Moisture of Extinction vs. SAVR (1/ft)', fontsize = 15, fontweight = 'bold');
grid on;
%ylim([0, max(ros)]);

sgtitle('SAVR (1/ft) vs. ROS, ir, qig, phiw, phis, gamma, xifr, etam, rtemp1', fontsize = 18, fontweight = 'bold')
