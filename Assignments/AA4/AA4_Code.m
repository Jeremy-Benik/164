%% Wind Speed
fuels_mod;
wind = linspace(0,20,500);
balbi_wind = zeros(1,500);
rothermel_wind = zeros(1,500);
balbi_wind = ros_balbi_kolgerberg_mod(fuel(1), wind, tand(3), 0.03, 297.4);
rothermel_wind = ros_rothermel(fuel(1), wind, tand(3), 0.03);

subplot(2, 1, 1)
plot(wind, balbi_wind, color = 'red')
ylabel('Rate Of Spread (m/s)', fontsize = 12, fontweight = 'bold')
xlabel('Wind Speed', fontsize = 12, fontweight = 'bold')
title('Balbi ROS Model Wind Sensitivity', fontsize = 18, fontweight = 'bold')
grid on;

subplot(2, 1, 2)
plot(wind, rothermel_wind, color = 'blue')
ylabel('Rate Of Spread (m/s)', fontsize = 12, fontweight = 'bold')
xlabel('Wind Speed (m/s)', fontsize = 12, fontweight = 'bold')
title('Rothermel ROS Model Wind Sensitivity', fontsize = 18, fontweight = 'bold')
grid on;

%% Slope
fuels_mod;
slope = linspace(0,45,500);
balbi_slope = zeros(1,500);
rothermel_slope = zeros(1,500);
balbi_slope = ros_balbi_kolgerberg_mod(fuel(1), 1.5, tand(slope), 0.03, 297.4);
rothermel_slope = ros_rothermel(fuel(1), 1.5, tand(slope), 0.03);


subplot(2, 1, 1)
plot(slope, balbi_slope, color = 'red')
ylabel('Rate Of Spread (m/s)', fontsize = 12, fontweight = 'bold')
xlabel('Slope °', fontsize = 12, fontweight = 'bold')
title('Balbi ROS Model Slope Sensitivity', fontsize = 18, fontweight = 'bold')
grid on;

subplot(2, 1, 2)
plot(slope, rothermel_slope, color = 'blue')
ylabel('Rate Of Spread (m/s)', fontsize = 12, fontweight = 'bold')
xlabel('Slope °', fontsize = 12, fontweight = 'bold')
title('Rothermel ROS Model Slope Sensitivity', fontsize = 18, fontweight = 'bold')
grid on;

%% Fuel Moisture
fuels_mod;
fmc = linspace(0,0.1,500);
balbi_fmc = zeros(1,500);
rothermel_fmc = zeros(1,500);
balbi_fmc = ros_balbi_kolgerberg_mod(fuel(1), 1.5, tand(3), fmc, 297.4);
rothermel_fmc = ros_rothermel(fuel(1), 1.5, tand(3), fmc);

subplot(2, 1, 1)
plot(fmc, balbi_fmc, color = 'red')
ylabel('Rate Of Spread (m/s)', fontsize = 12, fontweight = 'bold')
xlabel('Fuel Moisture', fontsize = 12, fontweight = 'bold')
title('Balbi ROS Model Fuel Moisture Sensitivity', fontsize = 18, fontweight = 'bold')
grid on;

subplot(2, 1, 2)
plot(fmc, rothermel_fmc, color = 'blue')
ylabel('Rate Of Spread (m/s)', fontsize = 12, fontweight = 'bold')
xlabel('Fuel Moisture', fontsize = 12, fontweight = 'bold')
title('Rothermel ROS Model Fuel Moisture Sensitivity', fontsize = 18, fontweight = 'bold')
grid on;
