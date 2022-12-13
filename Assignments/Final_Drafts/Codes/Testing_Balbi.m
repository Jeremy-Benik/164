% This code will be testing the many balbi parameters to see how sensitive
% the model is to changes. As for what I will change, I will first look at
% the code and determing what parameters in the paper I could possibly
% change

fuels_mod;
%ros_balbi(fuel(3), 1.5, tand(3), 0.03)

%% Fuel Moisture
x = linspace(0, 1, 1000);
[ros, R_c, R_f, R_b] = ros_balbi(fuel(3), 1.5, tand(3), x);
x = x .* 100;

% Rate of spread
figure('Renderer', 'painters', 'Position', [10 10 800 600])
%subplot(2, 2, 1);
tiledlayout(2, 2, 'TileSpacing', 'compact', 'Padding', 'none');
nexttile
a = plot(x, ros, color = 'red');
set(a,'LineWidth',2);
%xlabel('Fuel Moisture %', fontsize = 13, fontweight = 'bold');
ylabel('Rate of Spread (m/s)', fontsize = 13, fontweight = 'bold');
title('ROS vs. Fuel Moisture', fontsize = 13, fontweight = 'bold');
grid on;
ylim([0, max(ros)]);
% Convective component
%subplot(2, 2, 2);
nexttile
a = plot(x, R_c, color = 'red');
set(a,'LineWidth',2);
%xlabel('Fuel Moisture %', fontsize = 13, fontweight = 'bold');
ylabel('R_c', fontsize = 13, fontweight = 'bold');
title('R_c vs. Fuel Moisture', fontsize = 13, fontweight = 'bold');
grid on;
ylim([0, max(ros)]);

% Radiative component
%subplot(2, 2, 3);
nexttile
a = plot(x, R_b, color = 'red');
set(a,'LineWidth',2);
xlabel('Fuel Moisture %', fontsize = 13, fontweight = 'bold');
ylabel('R_b', fontsize = 13, fontweight = 'bold');
title('R_b vs. Fuel Moisture', fontsize = 13, fontweight = 'bold');
grid on;
ylim([0, max(ros)]);

% Flame base radiation
%subplot(2, 2, 4);
nexttile
a = plot(x, R_f, color = 'red');
set(a,'LineWidth',2);
xlabel('Fuel Moisture %', fontsize = 13, fontweight = 'bold');
ylabel('R_f', fontsize = 13, fontweight = 'bold');
title('R_f vs. Fuel Moisture', fontsize = 13, fontweight = 'bold');
grid on;
ylim([0, max(ros)]);

sgtitle('Fuel Moisture % vs. ROS, R_c, R_b, R_f', fontsize = 16, fontweight = 'bold')
%% Wind Speed
x = linspace(0, 20, 1000);
[ros, R_c, R_f, R_b] = ros_balbi(fuel(3), x, tand(3), 0.03);

% Rate of spread
figure('Renderer', 'painters', 'Position', [10 10 800 600])
%subplot(2, 2, 1);
tiledlayout(2, 2, 'TileSpacing', 'compact', 'Padding', 'none');
nexttile
a = plot(x, ros, color = 'red');
set(a,'LineWidth',2);
%xlabel('Wind Speed (m/s)', fontsize = 13, fontweight = 'bold');
ylabel('Rate of Spread (m/s)', fontsize = 13, fontweight = 'bold');
title('ROS vs. Wind Speed (m/s)', fontsize = 13, fontweight = 'bold');
grid on;
ylim([0, max(ros)]);
% Convective component
%subplot(2, 2, 2);
nexttile
a = plot(x, R_c, color = 'red');
set(a,'LineWidth',2);
%xlabel('Wind Speed (m/s)', fontsize = 13, fontweight = 'bold');
ylabel('R_c', fontsize = 13, fontweight = 'bold');
title('R_c vs. Wind Speed (m/s)', fontsize = 13, fontweight = 'bold');
grid on;
ylim([0, max(ros)]);

% Radiative component
%subplot(2, 2, 3);
nexttile
a = plot(x, R_b, color = 'red');
set(a,'LineWidth',2);
xlabel('Wind Speed (m/s)', fontsize = 13, fontweight = 'bold');
ylabel('R_b', fontsize = 13, fontweight = 'bold');
title('R_b vs. Wind Speed (m/s)', fontsize = 13, fontweight = 'bold');
grid on;
ylim([0, max(ros)]);

% Flame base radiation
%subplot(2, 2, 4);
nexttile
a = plot(x, R_f, color = 'red');
set(a,'LineWidth',2);
xlabel('Wind Speed (m/s)', fontsize = 13, fontweight = 'bold');
ylabel('R_f', fontsize = 13, fontweight = 'bold');
title('R_f vs. Wind Speed (m/s)', fontsize = 13, fontweight = 'bold');
grid on;
ylim([0, max(ros)]);

sgtitle('Wind Speed (m/s) vs. ROS, R_c, R_b, R_f', fontsize = 16, fontweight = 'bold')


%% Slope
x = linspace(0, 80, 1000);
[ros, R_c, R_f, R_b] = ros_balbi(fuel(3), 1.5, tand(x), 0.03);

% Rate of spread
figure('Renderer', 'painters', 'Position', [10 10 800 600])
%subplot(2, 2, 1);
tiledlayout(2, 2, 'TileSpacing', 'compact', 'Padding', 'none');
nexttile
a = plot(x, ros, color = 'red');
set(a,'LineWidth',2);
%xlabel('Slope (degrees)', fontsize = 13, fontweight = 'bold');
ylabel('Rate of Spread (m/s)', fontsize = 13, fontweight = 'bold');
title('ROS vs. Slope (degrees)', fontsize = 13, fontweight = 'bold');
grid on;
ylim([0, max(ros)]);
% Convective component
%subplot(2, 2, 2);
nexttile
a = plot(x, R_c, color = 'red');
set(a,'LineWidth',2);
%xlabel('Slope (degrees)', fontsize = 13, fontweight = 'bold');
ylabel('R_c', fontsize = 13, fontweight = 'bold');
title('R_c vs. Slope (degrees)', fontsize = 13, fontweight = 'bold');
grid on;
ylim([0, max(ros)]);

% Radiative component
%subplot(2, 2, 3);
nexttile
a = plot(x, R_b, color = 'red');
set(a,'LineWidth',2);
xlabel('Slope (degrees)', fontsize = 13, fontweight = 'bold');
ylabel('R_b', fontsize = 13, fontweight = 'bold');
title('R_b vs. Slope (degrees)', fontsize = 13, fontweight = 'bold');
grid on;
ylim([0, max(ros)]);

% Flame base radiation
%subplot(2, 2, 4);
nexttile
a = plot(x, R_f, color = 'red');
set(a,'LineWidth',2);
xlabel('Slope (degrees)', fontsize = 13, fontweight = 'bold');
ylabel('R_f', fontsize = 13, fontweight = 'bold');
title('R_f vs. Slope (degrees)', fontsize = 13, fontweight = 'bold');
grid on;
ylim([0, max(ros)]);

sgtitle('Slope vs. ROS, R_c, R_b, R_f', fontsize = 16, fontweight = 'bold')

%% No Slope No Wind FMC 
x = linspace(0, 1, 1000);
[ros, R_c, R_f, R_b] = ros_balbi(fuel(3), 0, 0, x);
x = x .* 100;

% Rate of spread
figure('Renderer', 'painters', 'Position', [10 10 800 600])
%subplot(2, 2, 1);
tiledlayout(2, 2, 'TileSpacing', 'compact', 'Padding', 'none');
nexttile
a = plot(x, ros, color = 'red');
set(a,'LineWidth',2);
%xlabel('Fuel Moisture %', fontsize = 13, fontweight = 'bold');
ylabel('Rate of Spread (m/s)', fontsize = 13, fontweight = 'bold');
title('ROS vs. Fuel Moisture', fontsize = 13, fontweight = 'bold');
grid on;
ylim([0, max(ros)]);
% Convective component
%subplot(2, 2, 2);
nexttile
a = plot(x, R_c, color = 'red');
set(a,'LineWidth',2);
%xlabel('Fuel Moisture %', fontsize = 13, fontweight = 'bold');
ylabel('R_c', fontsize = 13, fontweight = 'bold');
title('R_c vs. Fuel Moisture', fontsize = 13, fontweight = 'bold');
grid on;
ylim([0, max(ros)]);

% Radiative component
%subplot(2, 2, 3);
nexttile
a = plot(x, R_b, color = 'red');
set(a,'LineWidth',2);
xlabel('Fuel Moisture %', fontsize = 13, fontweight = 'bold');
ylabel('R_b', fontsize = 13, fontweight = 'bold');
title('R_b vs. Fuel Moisture', fontsize = 13, fontweight = 'bold');
grid on;
ylim([0, max(ros)]);

% Flame base radiation
%subplot(2, 2, 4);
nexttile
a = plot(x, R_f, color = 'red');
set(a,'LineWidth',2);
xlabel('Fuel Moisture %', fontsize = 13, fontweight = 'bold');
ylabel('R_f', fontsize = 13, fontweight = 'bold');
title('R_f vs. Fuel Moisture', fontsize = 13, fontweight = 'bold');
grid on;
ylim([0, max(ros)]);

sgtitle('Fuel Moisture % vs. ROS, R_c, R_b, R_f in no wind/slope', fontsize = 16, fontweight = 'bold')

%% Testing fueldepthm (fuel height (m)
x = linspace(0, 20, 1000);
[ros, R_c, R_f, R_b] = ros_balbi(fuel(3), 1.5, tand(3), 0.03, x);
% Rate of spread
figure('Renderer', 'painters', 'Position', [10 10 800 600])
%subplot(2, 2, 1);
tiledlayout(2, 2, 'TileSpacing', 'compact', 'Padding', 'none');
nexttile
a = plot(x, ros, color = 'red');
set(a,'LineWidth',2);
%xlabel('Fuel Height (m)', fontsize = 13, fontweight = 'bold');
ylabel('Rate of Spread (m/s)', fontsize = 13, fontweight = 'bold');
title('ROS vs. Fuel Height (m)', fontsize = 13, fontweight = 'bold');
grid on;
ylim([0, max(ros)]);
% Convective component
%subplot(2, 2, 2);
nexttile
a = plot(x, R_c, color = 'red');
set(a,'LineWidth',2);
%xlabel('Fuel Height (m)', fontsize = 13, fontweight = 'bold');
ylabel('R_c', fontsize = 13, fontweight = 'bold');
title('R_c vs. Fuel Height (m)', fontsize = 13, fontweight = 'bold');
grid on;
ylim([0, max(ros)]);

% Radiative component
%subplot(2, 2, 3);
nexttile
a = plot(x, R_b, color = 'red');
set(a,'LineWidth',2);
xlabel('Fuel Height (m)', fontsize = 13, fontweight = 'bold');
ylabel('R_b', fontsize = 13, fontweight = 'bold');
title('R_b vs. Fuel Height (m)', fontsize = 13, fontweight = 'bold');
grid on;
ylim([0, max(ros)]);

% Flame base radiation
%subplot(2, 2, 4);
nexttile
a = plot(x, R_f, color = 'red');
set(a,'LineWidth',2);
xlabel('Fuel Height (m)', fontsize = 13, fontweight = 'bold');
ylabel('R_f', fontsize = 13, fontweight = 'bold');
title('R_f vs. Fuel Height (m)', fontsize = 13, fontweight = 'bold');
grid on;
ylim([0, max(ros)]);

sgtitle('Fuel Height (m) vs. ROS, R_c, R_b, R_f', fontsize = 16, fontweight = 'bold')

%% Air Temperature
x = linspace(200, 350, 1000);
[ros, R_c, R_f, R_b] = ros_balbi(fuel(3), 1.5, tand(3), 0.03, x);
% Rate of spread
subplot(2, 2, 1);
plot(x, ros, color = 'red');
xlabel('Air Temperature (K)', fontsize = 13, fontweight = 'bold');
ylabel('Rate of Spread (m/s)', fontsize = 13, fontweight = 'bold');
title('ROS vs. Air Temperature (K)', fontsize = 13, fontweight = 'bold');
grid on;
ylim([0, max(ros)]);
% Convective component
subplot(2, 2, 2);
plot(x, R_c, color = 'red');
xlabel('Air Temperature (K)', fontsize = 13, fontweight = 'bold');
ylabel('R_c', fontsize = 13, fontweight = 'bold');
title('R_c vs. Air Temperature (K)', fontsize = 13, fontweight = 'bold');
grid on;
ylim([0, max(ros)]);

% Radiative component
subplot(2, 2, 3);
plot(x, R_b, color = 'red');
xlabel('Air Temperature (K)', fontsize = 13, fontweight = 'bold');
ylabel('R_b', fontsize = 13, fontweight = 'bold');
title('R_b vs. Air Temperature (K)', fontsize = 13, fontweight = 'bold');
grid on;
ylim([0, max(ros)]);

% Flame base radiation
subplot(2, 2, 4);
plot(x, R_f, color = 'red');
xlabel('Air Temperature (K)', fontsize = 13, fontweight = 'bold');
ylabel('R_f', fontsize = 13, fontweight = 'bold');
title('R_f vs. Air Temperature (K)', fontsize = 13, fontweight = 'bold');
grid on;
ylim([0, max(ros)]);

sgtitle('Air Temperature (K) vs. ROS, R_c, R_b, R_f', fontsize = 16, fontweight = 'bold')

%% Total Fuel Load
x = linspace(1, 50, 1000);
[ros, R_c, R_f, R_b] = ros_balbi(fuel(3), 1.5, tand(3), 0.03, x);
% Rate of spread
subplot(2, 2, 1);
plot(x, ros, color = 'red');
xlabel('Total Fuel Load (kg/m^2)', fontsize = 13, fontweight = 'bold');
ylabel('Rate of Spread (m/s)', fontsize = 13, fontweight = 'bold');
title('ROS vs. Total Fuel Load (kg/m^2)', fontsize = 13, fontweight = 'bold');
grid on;
ylim([0, max(ros)]);
% Convective component
subplot(2, 2, 2);
plot(x, R_c, color = 'red');
xlabel('Total Fuel Load (kg/m^2)', fontsize = 13, fontweight = 'bold');
ylabel('R_c', fontsize = 13, fontweight = 'bold');
title('R_c vs. Total Fuel Load (kg/m^2)', fontsize = 13, fontweight = 'bold');
grid on;
ylim([0, max(ros)]);

% Radiative component
subplot(2, 2, 3);
plot(x, R_b, color = 'red');
xlabel('Total Fuel Load (kg/m^2)', fontsize = 13, fontweight = 'bold');
ylabel('R_b', fontsize = 13, fontweight = 'bold');
title('R_b vs. Total Fuel Load (kg/m^2)', fontsize = 13, fontweight = 'bold');
grid on;
ylim([0, max(ros)]);

% Flame base radiation
subplot(2, 2, 4);
plot(x, R_f, color = 'red');
xlabel('Total Fuel Load (kg/m^2)', fontsize = 13, fontweight = 'bold');
ylabel('R_f', fontsize = 13, fontweight = 'bold');
title('R_f vs. Total Fuel Load (kg/m^2)', fontsize = 13, fontweight = 'bold');
grid on;
ylim([0, max(ros)]);

sgtitle('Total Fuel Load (kg/m^2) vs. ROS, R_c, R_b, R_f', fontsize = 16, fontweight = 'bold')
%% Dead Fuel Load
x = linspace(0, 0.969, 1000);
[ros, R_c, R_f, R_b] = ros_balbi(fuel(3), 1.5, tand(3), 0.03, x);
% Rate of spread
subplot(2, 2, 1);
plot(x, ros, color = 'red');
xlabel('Dead Fuel Load (kg/m^2)', fontsize = 13, fontweight = 'bold');
ylabel('Rate of Spread (m/s)', fontsize = 13, fontweight = 'bold');
title('ROS vs. Dead Fuel Load (kg/m^2)', fontsize = 13, fontweight = 'bold');
grid on;
ylim([0, max(ros)]);
% Convective component
subplot(2, 2, 2);
plot(x, R_c, color = 'red');
xlabel('Dead Fuel Load (kg/m^2)', fontsize = 13, fontweight = 'bold');
ylabel('R_c', fontsize = 13, fontweight = 'bold');
title('R_c vs. Dead Fuel Load (kg/m^2)', fontsize = 13, fontweight = 'bold');
grid on;
ylim([0, max(ros)]);

% Radiative component
subplot(2, 2, 3);
plot(x, R_b, color = 'red');
xlabel('Dead Fuel Load (kg/m^2)', fontsize = 13, fontweight = 'bold');
ylabel('R_b', fontsize = 13, fontweight = 'bold');
title('R_b vs. Dead Fuel Load (kg/m^2)', fontsize = 13, fontweight = 'bold');
grid on;
ylim([0, max(ros)]);

% Flame base radiation
subplot(2, 2, 4);
plot(x, R_f, color = 'red');
xlabel('Dead Fuel Load (kg/m^2)', fontsize = 13, fontweight = 'bold');
ylabel('R_f', fontsize = 13, fontweight = 'bold');
title('R_f vs. Dead Fuel Load (kg/m^2)', fontsize = 13, fontweight = 'bold');
grid on;
ylim([0, max(ros)]);

sgtitle('Dead Fuel Load (kg/m^2) vs. ROS, R_c, R_b, R_f', fontsize = 16, fontweight = 'bold')
%% Fuel Density
x = linspace(1, 1000, 1000);
[ros, R_c, R_f, R_b] = ros_balbi(fuel(3), 1.5, tand(3), 0.03, x);
% Rate of spread
subplot(2, 2, 1);
plot(x, ros, color = 'red');
xlabel('Fuel Density (kg/m^3)', fontsize = 13, fontweight = 'bold');
ylabel('Rate of Spread (m/s)', fontsize = 13, fontweight = 'bold');
title('ROS vs. Fuel Density (kg/m^3)', fontsize = 13, fontweight = 'bold');
grid on;
ylim([0, max(ros)]);
% Convective component
subplot(2, 2, 2);
plot(x, R_c, color = 'red');
xlabel('Fuel Density (kg/m^3)', fontsize = 13, fontweight = 'bold');
ylabel('R_c', fontsize = 13, fontweight = 'bold');
title('R_c vs. Fuel Density (kg/m^3)', fontsize = 13, fontweight = 'bold');
grid on;
ylim([0, max(ros)]);

% Radiative component
subplot(2, 2, 3);
plot(x, R_b, color = 'red');
xlabel('Fuel Density (kg/m^3)', fontsize = 13, fontweight = 'bold');
ylabel('R_b', fontsize = 13, fontweight = 'bold');
title('R_b vs. Fuel Density (kg/m^3)', fontsize = 13, fontweight = 'bold');
grid on;
ylim([0, max(ros)]);

% Flame base radiation
subplot(2, 2, 4);
plot(x, R_f, color = 'red');
xlabel('Fuel Density (kg/m^3)', fontsize = 13, fontweight = 'bold');
ylabel('R_f', fontsize = 13, fontweight = 'bold');
title('R_f vs. Fuel Density (kg/m^3)', fontsize = 13, fontweight = 'bold');
grid on;
ylim([0, max(ros)]);

sgtitle('Fuel Density (kg/m^3) vs. ROS, R_c, R_b, R_f', fontsize = 16, fontweight = 'bold')
%% Fitted model paramter r00
x = linspace(0, 5e-5, 1000);
[ros, R_c, R_f, R_b] = ros_balbi(fuel(3), 1.5, tand(3), 0.03, x);
% Rate of spread
subplot(2, 2, 1);
plot(x, ros, color = 'red');
xlabel('Fitted Model Parameter', fontsize = 13, fontweight = 'bold');
ylabel('Rate of Spread (m/s)', fontsize = 13, fontweight = 'bold');
title('ROS vs. Fitted Model Parameter', fontsize = 13, fontweight = 'bold');
grid on;
ylim([0, max(ros)]);
% Convective component
subplot(2, 2, 2);
plot(x, R_c, color = 'red');
xlabel('Fitted Model Parameter', fontsize = 13, fontweight = 'bold');
ylabel('R_c', fontsize = 13, fontweight = 'bold');
title('R_c vs. Fitted Model Parameter', fontsize = 13, fontweight = 'bold');
grid on;
ylim([0, max(ros)]);

% Radiative component
subplot(2, 2, 3);
plot(x, R_b, color = 'red');
xlabel('Fitted Model Parameter', fontsize = 13, fontweight = 'bold');
ylabel('R_b', fontsize = 13, fontweight = 'bold');
title('R_b vs. Fitted Model Parameter', fontsize = 13, fontweight = 'bold');
grid on;
ylim([0, max(ros)]);

% Flame base radiation
subplot(2, 2, 4);
plot(x, R_f, color = 'red');
xlabel('Fitted Model Parameter', fontsize = 13, fontweight = 'bold');
ylabel('R_f', fontsize = 13, fontweight = 'bold');
title('R_f vs. Fitted Model Parameter', fontsize = 13, fontweight = 'bold');
grid on;
ylim([0, max(ros)]);

sgtitle('Fitted Model Parameter vs. ROS, R_c, R_b, R_f', fontsize = 16, fontweight = 'bold')

%% chi
x = linspace(0, 1, 1000);
[ros, R_c, R_f, R_b] = ros_balbi(fuel(3), 1.5, tand(3), 0.03, x);
% Rate of spread
subplot(2, 2, 1);
plot(x, ros, color = 'red');
xlabel('Chi', fontsize = 13, fontweight = 'bold');
ylabel('Rate of Spread (m/s)', fontsize = 13, fontweight = 'bold');
title('ROS vs. Chi', fontsize = 13, fontweight = 'bold');
grid on;
ylim([0, max(ros)]);
% Convective component
subplot(2, 2, 2);
plot(x, R_c, color = 'red');
xlabel('Chi', fontsize = 13, fontweight = 'bold');
ylabel('R_c', fontsize = 13, fontweight = 'bold');
title('R_c vs. Chi', fontsize = 13, fontweight = 'bold');
grid on;
ylim([0, max(ros)]);

% Radiative component
subplot(2, 2, 3);
plot(x, R_b, color = 'red');
xlabel('Chi', fontsize = 13, fontweight = 'bold');
ylabel('R_b', fontsize = 13, fontweight = 'bold');
title('R_b vs. Chi', fontsize = 13, fontweight = 'bold');
grid on;
ylim([0, max(ros)]);

% Flame base radiation
subplot(2, 2, 4);
plot(x, R_f, color = 'red');
xlabel('Chi', fontsize = 13, fontweight = 'bold');
ylabel('R_f', fontsize = 13, fontweight = 'bold');
title('R_f vs. Chi', fontsize = 13, fontweight = 'bold');
grid on;
ylim([0, max(ros)]);

sgtitle('Chi vs. ROS, R_c, R_b, R_f', fontsize = 16, fontweight = 'bold')

%% SAVR
x = linspace(100, 5000, 1000);
[ros, R_c, R_f, R_b] = ros_balbi(fuel(3), 1.5, tand(3), 0.03, x);
% Rate of spread
figure('Renderer', 'painters', 'Position', [10 10 800 600])
%subplot(2, 2, 1);
tiledlayout(2, 2, 'TileSpacing', 'compact', 'Padding', 'none');
nexttile
a = plot(x, ros, color = 'red');
set(a,'LineWidth',2);
%xlabel('SAVR (1/ft)', fontsize = 13, fontweight = 'bold');
ylabel('Rate of Spread (m/s)', fontsize = 13, fontweight = 'bold');
title('ROS vs. SAVR (1/ft)', fontsize = 13, fontweight = 'bold');
grid on;
ylim([0, max(ros)]);
% Convective component
%subplot(2, 2, 2);
nexttile
a = plot(x, R_c, color = 'red');
set(a,'LineWidth',2);
%xlabel('SAVR (1/ft)', fontsize = 13, fontweight = 'bold');
ylabel('R_c', fontsize = 13, fontweight = 'bold');
title('R_c vs. SAVR (1/ft)', fontsize = 13, fontweight = 'bold');
grid on;
ylim([0, max(ros)]);

% Radiative component
%subplot(2, 2, 3);
nexttile
a = plot(x, R_b, color = 'red');
set(a,'LineWidth',2);
xlabel('SAVR (1/ft)', fontsize = 13, fontweight = 'bold');
ylabel('R_b', fontsize = 13, fontweight = 'bold');
title('R_b vs. SAVR (1/ft)', fontsize = 13, fontweight = 'bold');
grid on;
ylim([0, max(ros)]);

% Flame base radiation
%subplot(2, 2, 4);
nexttile
a = plot(x, R_f, color = 'red');
set(a,'LineWidth',2);
xlabel('SAVR (1/ft)', fontsize = 13, fontweight = 'bold');
ylabel('R_f', fontsize = 13, fontweight = 'bold');
title('R_f vs. SAVR (1/ft)', fontsize = 13, fontweight = 'bold');
grid on;
ylim([0, max(ros)]);

sgtitle('SAVR (1/ft) vs. ROS, R_c, R_b, R_f', fontsize = 16, fontweight = 'bold')


