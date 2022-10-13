%% Wind Speed
fuels_mod;
wind = linspace(0,20,100);
balbi_wind = zeros(1,100);
rothermel_wind = zeros(1,100);
balbi_wind = ros_balbi_kolgerberg_mod(fuel(1), wind, tand(3), 0.03, 297.4, 50);
rothermel_wind = ros_rothermel(fuel(1), wind, tand(3), 0.03);

subplot(2, 1, 1)
plot(balbi_wind, wind, color = 'red')
xlabel('Rate Of Spread', fontsize = 12, fontweight = 'bold')
ylabel('Wind Speed', fontsize = 12, fontweight = 'bold')
title('Balbi ROS Model Wind Sensitivity', fontsize = 18, fontweight = 'bold')

subplot(2, 1, 2)
plot(rothermel_wind, wind, color = 'blue')
xlabel('Rate Of Spread (m/s)', fontsize = 12, fontweight = 'bold')
ylabel('Wind Speed (m/s)', fontsize = 12, fontweight = 'bold')
title('Rothermel ROS Model Wind Sensitivity', fontsize = 18, fontweight = 'bold')

%% Slope
fuels_mod;
slope = linspace(0,45,200);
balbi_slope = zeros(1,200);
rothermel_slope = zeros(1,200);
balbi_slope = ros_balbi_kolgerberg_mod(fuel(1), 1.5, tand(slope), 0.03, 297.4, 50);
rothermel_slope = ros_rothermel(fuel(1), 1.5, tand(slope), 0.03);

subplot(2, 1, 1)
plot(balbi_slope, tand(slope), color = 'red')
xlabel('Rate Of Spread', fontsize = 12, fontweight = 'bold')
ylabel('Slope', fontsize = 12, fontweight = 'bold')
title('Balbi ROS Model Slope Sensitivity', fontsize = 18, fontweight = 'bold')

subplot(2, 1, 2)
plot(rothermel_slope, tand(slope), color = 'blue')
xlabel('Rate Of Spread (m/s)', fontsize = 12, fontweight = 'bold')
ylabel('Slope', fontsize = 12, fontweight = 'bold')
title('Rothermel ROS Model Slope Sensitivity', fontsize = 18, fontweight = 'bold')
%% Fuel Moisture
fuels_mod;
fmc = linspace(0,0.1,200);
balbi_fmc = zeros(1,200);
rothermel_fmc = zeros(1,200);
balbi_fmc = ros_balbi_kolgerberg_mod(fuel(1), 1.5, tand(3), fmc, 297.4, 50);
rothermel_fmc = ros_rothermel(fuel(1), 1.5, tand(3), fmc);

subplot(2, 1, 1)
plot(balbi_fmc, fmc, color = 'red')
xlabel('Rate Of Spread', fontsize = 12, fontweight = 'bold')
ylabel('Fuel Moisture', fontsize = 12, fontweight = 'bold')
title('Balbi ROS Model Slope Sensitivity', fontsize = 18, fontweight = 'bold')

subplot(2, 1, 2)
plot(rothermel_fmc, fmc, color = 'blue')
xlabel('Rate Of Spread (m/s)', fontsize = 12, fontweight = 'bold')
ylabel('Fuel Moisture', fontsize = 12, fontweight = 'bold')
title('Rothermel ROS Model Slope Sensitivity', fontsize = 18, fontweight = 'bold')