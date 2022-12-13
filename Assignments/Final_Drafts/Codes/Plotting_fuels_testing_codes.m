
%%
wind_speed = linspace(0, 15, 100);

[ir, qig, phiw, phis, gamma, xifr, etam, rtemp1, ros_1] = ros_rothermel(fuel(1), wind_speed, 0, 0.04);
[ir, qig, phiw, phis, gamma, xifr, etam, rtemp1, ros_2] = ros_rothermel(fuel(1), wind_speed, 0, 0.07);
plot(wind_speed, ros_1, 'red', 'LineWidth', 2);
hold on;
plot(wind_speed, ros_2, 'blue', 'LineWidth', 2);
grid on;
xlabel('Wind Speed (m/s)', fontsize = 12, fontweight = 'bold');
ylabel('ROS (m/s)', fontsize = 12, fontweight = 'bold');
legend('Fuel cat 1 from Kolgerberg, FM = 4%', 'Fuel cat 1 from Kolgerberg, FM = 7%');
title('my rothermel code used for 164', fontsize = 18, fontweight = 'bold')

%%
wind_speed = linspace(0, 15, 100);

ros_3 = fire_ros(fuel(1), wind_speed, 0, 0.04);
ros_4 = fire_ros(fuel(1), wind_speed, 0, 0.07);
plot(wind_speed, ros_3, 'red', 'LineWidth', 2);
hold on;
plot(wind_speed, ros_4, 'blue', 'LineWidth', 2);
grid on;
xlabel('Wind Speed (m/s)', fontsize = 12, fontweight = 'bold');
ylabel('ROS (m/s)', fontsize = 12, fontweight = 'bold');
legend('Fuel cat 1 from Kolgerberg, FM = 4%', 'Fuel cat 1 from Kolgerberg, FM = 7%');
title('fire\_ros.m downloaded from clickup', fontsize = 18, fontweight = 'bold')






