function animate()
track_set = [900, 200, 15];
path = struct('l_st',900,'width',15, 'radius', 200);

% Track Creation

theta1 = zeros(size(100));
x1 = linspace(0, 900, 100);
y1 = zeros(size(x1));


theta2 = linspace(-pi/2, pi/2, 100);
x2 = 900 + 200 * cos(theta2);
y2 = 200 + 200 * sin(theta2);

theta3 = zeros(size(100));
x3 = linspace(900, 0, 100);
y3 = 400*ones(size(x1));


theta4 = linspace(pi/2,3*pi/2, 100);
x4 = 200 * cos(theta4);
y4 = 200 + 200 * sin(theta4);


waypoints_x = [x1,x2,x3,x4];
waypoints_y = [y1,y2,y3,y4];
theta = [theta1,theta2,theta3,theta4];

% Outer Border
xob1 = linspace(0, 900, 100);
yob1 = -7.5*ones(size(xob1));

xob2 = 900 + 207.5 * cos(theta2);
yob2 = 200 + 207.5 * sin(theta2);

xob3 = linspace(900, 0, 100);
yob3 = 407.5*ones(size(xob1));

xob4 = 207.5 * cos(theta4);
yob4 = 200 + 207.5 * sin(theta4);


waypoints_x_ob = [xob1,xob2,xob3,xob4];
waypoints_y_ob = [yob1,yob2,yob3,yob4];

% Inner Border
xib1 = linspace(0, 900, 100);
yib1 = 7.5*ones(size(xib1));

theta2 = linspace(-pi/2, pi/2, 100);
xib2 = 900 + 192.5 * cos(theta2);
yib2 = 200 + 192.5 * sin(theta2);

theta3 = zeros(size(100));
xib3 = linspace(900, 0, 100);
yib3 = 392.5*ones(size(xib1));

xib4 = 192.5 * cos(theta4);
yib4 = 200 + 192.5 * sin(theta4);

waypoints_x_ib = [xib1,xib2,xib3,xib4];
waypoints_y_ib = [yib1,yib2,yib3,yib4];

% Plot the centerline
plot(waypoints_x, waypoints_y, 'b');

hold on;  % Keep the current plot and add more plots

% Plot the outer border with black color
plot(waypoints_x_ob, waypoints_y_ob, 'k');

% Plot the inner border with black color
plot(waypoints_x_ib, waypoints_y_ib, 'k');

% Shade the area between the outer and inner borders with green color
fill([waypoints_x_ob, fliplr(waypoints_x_ib)], [waypoints_y_ob, fliplr(waypoints_y_ib)], 'g', 'LineStyle', 'none');

hold off;  % Release the hold on the plot

% Set axis equal for proper visualization
axis equal;


% Define the initial position of the car (starting from the rightmost point)
car_x = 0;
car_y = 0;

% Define car size
car_size = 10; % Adjust as needed

% Plot the car as a red square with the front facing the direction of motion
car_handle = rectangle('Position', [car_x - car_size/2, car_y - car_size/2, car_size, car_size], 'FaceColor', 'r');

for i = 2:length(x_car)
    % Update car position
    set(car_handle, 'XData', x_car(i), 'YData', y_car(i));
    quiver(x_car(i), y_car(i), cos(heading_car(i)), sin(heading_car(i)), 'Color', 'b', 'LineWidth', 2);  % Update heading vector
    
    % Pause to control animation speed
    pause(0.5);  % Adjust as needed
    
    % Update display
    drawnow;
end
end

