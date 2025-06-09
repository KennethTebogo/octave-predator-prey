% Define the system of ODEs
function dz = predator_prey(t, z)
    x = z(1);
    y = z(2);
    dx = x - 0.5 * x * y;
    dy = -0.75 * y + 0.25 * x * y;
    dz = [dx; dy];
end

% Time span and initial conditions
t0 = 0;
tf = 50;
z0 = [1.5; 1];
t = linspace(t0, tf, 500);

% Solve the system using ode45
[t_out, z_out] = ode45(@predator_prey, t, z0);

% Plot the results: Time series
figure;
plot(t_out, z_out(:,1), 'b', 'DisplayName', 'Prey (x)');
hold on;
plot(t_out, z_out(:,2), 'r--', 'DisplayName', 'Predator (y)');
xlabel('Time');
ylabel('Population');
title('Predator-Prey Dynamics');
legend show;
grid on;
hold off;

% Phase portrait (Prey vs Predator)
figure;
plot(z_out(:,1), z_out(:,2), 'color', [0.5 0 0.5]); % purple
xlabel('Prey Population (x)');
ylabel('Predator Population (y)');
title('Phase Portrait: Predator vs Prey');
grid on;

