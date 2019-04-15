% Parameters

% Motor
R       = 4.3;              % Ohm
L       = 65;               % uH
k_t     = 3.96 * 10^-3;     % N*m/A - Torque constant
i_0     = 0.046;            % A - No load current)
u_0     = 6;                % V - No load voltage
J       = 5.8 * 10^-8;      % kg*m^2 - Rotor inertia
u_max   = 15;              % V - Maximum voltage

% Encoder
LPR     = 512;              % Lines per revolution
CPR     = LPR * 4;          % Counts per revolution
 
% Robot
n       = 56/8;            % Gearing
d       = 31;               % mm - Wheel diameter
r       = d/2;
m_total = 300;              % g - Total weight of the robot
m       = m_t/2;            % g - Weight that each wheel has to power

% Simulation
v_step  = 6;                % Voltage step for simulation
t_samp  = 0.001;            % Sample time for the system (1000 HZ)