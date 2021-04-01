close all;
clear;


addpath('utils');


%% pre-calculated trajectories
trajhandle = @traj_line;
% trajhandle = @traj_helix;

%% Trajectory generation with waypoints
%% You need to implement this
% trajhandle = @traj_generator;
%  waypoints = [0    0   0;
%               1    1   1;
%               2    0   2;
%               3    -1  1;
%               4    0   0]';
% trajhandle([],[],waypoints);
% trajhandle = @traj_generator;
%  waypoints = [              0		0		0;
%                             -2       -2       2;
%                             -15      -15    2;
% 							-55		-55		2;
% 							-165	-65		2;
% 							-185	-85		2;
% 							-195	-175	2;
% 							-195	-195	2;
% 							-155	-125	2;
% 							-125	-155	2;
% 							-15		-165	2;
% 							5			-195	2;
% 							195		-195	2;
% 							195		-185	2;
% 							195		-155	2;
% 							185		-65		2;
% 							165		-85		2;
% 							145		-95		2]';
% trajhandle([],[],waypoints);


%% controller
controlhandle = @controller;


% Run simulation with given trajectory generator and controller
% state - n x 13, with each row having format [x, y, z, xdot, ydot, zdot, qw, qx, qy, qz, p, q, r]
[t, state] = simulation_3d(trajhandle, controlhandle);
