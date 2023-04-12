%% Testing the SAVR
x = linspace(100, 5000, 5000);
[ir, qig, phiw, phis, gamma, xifr, etam, rtemp1, epsilon, rhob, ros] = ros_rothermel(fuel(3), 1.5, tand(3), 0.03, x);


% Rate of spread
%subplot(3, 3, 1);
plot(x, ros, 'blue', 'LineWidth', 2);
xlabel('SAVR (1/ft)', fontsize = 11, fontweight = 'bold');
ylabel('Rate of Spread (m/s)', fontsize = 11, fontweight = 'bold');
% title('ROS vs. SAVR (1/ft)', fontsize = 13, fontweight = 'bold');
grid on;
% xticklabels({})
% ylim([0, max(ros)]);
hold on
[ros, R_c, R_f, R_b] = ros_balbi(fuel(3), 1.5, tand(3), 0.03, x);
plot(x, ros, 'red', 'LineWidth', 2)

legend('Rothermel', "Balbi", "Location", "northwest")


% Calculating the slope of the Balbi model initially

x1 = 2.;
[ros, R_c, R_f, R_b] = ros_balbi(fuel(3), 1.5, tand(3), 0.03, x1);
y1 = ros;

x2 = 1300;
[ros, R_c, R_f, R_b] = ros_balbi(fuel(3), 1.5, tand(3), 0.03, x2);
y2 = ros;
slope_1 = (y2 - y1) / (x2 - x1);
disp(slope_1)




x1 = 2255.;
[ros, R_c, R_f, R_b] = ros_balbi(fuel(3), 1.5, tand(3), 0.03, x1);
y1 = ros;

x2 = 4187;
[ros, R_c, R_f, R_b] = ros_balbi(fuel(3), 1.5, tand(3), 0.03, x2);
y2 = ros;
slope_1 = (y2 - y1) / (x2 - x1)

%% Testing fueldepthm (fuel height (m)
x = linspace(0, 3, 1000);
[ir, qig, phiw, phis, gamma, xifr, etam, rtemp1, epsilon, rhob, ros] = ros_rothermel(fuel(3), 1.5, tand(3), 0.03, x);

% Rate of spread
%subplot(3, 3, 1);
plot(x, ros, 'blue', 'LineWidth', 2);
xlabel('Fuel Height (m)', fontsize = 11, fontweight = 'bold');
ylabel('Rate of Spread (m/s)', fontsize = 11, fontweight = 'bold');
% title('ROS vs. SAVR (1/ft)', fontsize = 13, fontweight = 'bold');
grid on;
% xticklabels({})
% ylim([0, max(ros)]);
hold on
[ros, R_c, R_f, R_b] = ros_balbi(fuel(3), 1.5, tand(3), 0.03, x);
plot(x, ros, 'red', 'LineWidth', 2)

legend('Rothermel', "Balbi", "Location", "northwest")

%% Fuel Moisture with slope
x = linspace(0, .25, 1000);
[ir, qig, phiw, phis, gamma, xifr, etam, rtemp1, epsilon, rhob, ros] = ros_rothermel(fuel(3), 1.5, tand(3), x);
y = x .* 100;
% Rate of spread
%subplot(3, 3, 1);
plot(y, ros, 'blue', 'LineWidth', 2);
xlabel('FMC (%)', fontsize = 11, fontweight = 'bold');
ylabel('Rate of Spread (m/s)', fontsize = 11, fontweight = 'bold');
% title('ROS vs. SAVR (1/ft)', fontsize = 13, fontweight = 'bold');
grid on;
% xticklabels({})
% ylim([0, max(ros)]);
hold on
[ros, R_c, R_f, R_b] = ros_balbi(fuel(3), 1.5, tand(3), x);
plot(y, ros, 'red', 'LineWidth', 2)


legend('Rothermel', "Balbi", "Location", "northwest")

%% Fuel Moisture without slope
x = linspace(0, .25, 1000);
[ir, qig, phiw, phis, gamma, xifr, etam, rtemp1, epsilon, rhob, ros] = ros_rothermel(fuel(3), 0, 0, x);
y = x .* 100;
% Rate of spread
%subplot(3, 3, 1);
plot(y, ros, 'blue', 'LineWidth', 2);
xlabel('FMC (%)', fontsize = 11, fontweight = 'bold');
ylabel('Rate of Spread (m/s)', fontsize = 11, fontweight = 'bold');
% title('ROS vs. SAVR (1/ft)', fontsize = 13, fontweight = 'bold');
grid on;
% xticklabels({})
% ylim([0, max(ros)]);
hold on
[ros, R_c, R_f, R_b] = ros_balbi(fuel(3), 0, 0, x);
plot(y, ros, 'red', 'LineWidth', 2)

legend('Rothermel', "Balbi", "Location", "northwest")
%% Wind Speed
x = linspace(0, 20, 1000);
[ir, qig, phiw, phis, gamma, xifr, etam, rtemp1, epsilon, rhob, ros] = ros_rothermel(fuel(3), x, tand(3), 0.03);


% Rate of spread
%subplot(3, 3, 1);
plot(x, ros, 'blue', 'LineWidth', 2);
xlabel('Wind Speed (m/s)', fontsize = 11, fontweight = 'bold');
ylabel('Rate of Spread (m/s)', fontsize = 11, fontweight = 'bold');
% title('ROS vs. SAVR (1/ft)', fontsize = 13, fontweight = 'bold');
grid on;
% xticklabels({})
% ylim([0, max(ros)]);
hold on
[ros, R_c, R_f, R_b] = ros_balbi(fuel(3), x, tand(3), 0.03);
plot(x, ros, 'red', 'LineWidth', 2)

legend('Rothermel', "Balbi", "Location", "northwest")
x2 = 20;
[ir, qig, phiw, phis, gamma, xifr, etam, rtemp1, epsilon, rhob, ros] = ros_rothermel(fuel(3), x2, tand(3), 0.03);
y2 = ros;

x1 = 18;
[ir, qig, phiw, phis, gamma, xifr, etam, rtemp1, epsilon, rhob, ros] = ros_rothermel(fuel(3), x1, tand(3), 0.03);
y1 = ros;


y2 - y1






%% Slope
x = linspace(0, 80, 1000);
[ros, R_c, R_f, R_b] = ros_balbi(fuel(3), x, tand(x), 0.03);

[ir, qig, phiw, phis, gamma, xifr, etam, rtemp1, epsilon, rhob, ros] = ros_rothermel(fuel(3), 1.5, tand(x), 0.03);


% Rate of spread
%subplot(3, 3, 1);
plot(x, ros, 'blue', 'LineWidth', 2);
xlabel('Slope (Degrees)', fontsize = 11, fontweight = 'bold');
ylabel('Rate of Spread (m/s)', fontsize = 11, fontweight = 'bold');
% title('ROS vs. SAVR (1/ft)', fontsize = 13, fontweight = 'bold');
grid on;
% xticklabels({})
% ylim([0, max(ros)]);
hold on
[ros, R_c, R_f, R_b] = ros_balbi(fuel(3), 1.5, tand(x), 0.03);
plot(x, ros, 'red', 'LineWidth', 2)

legend('Rothermel', "Balbi", "Location", "northwest")





