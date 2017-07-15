%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
% Load parameters
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% Image:
N1 = 256*256;
N2 = 128*128;
rblur = 1;


% To calculate Wij
delta = 1e-4;
K = 50;
Block_size = 5;

% setting different parameter for the simulation
param_solver.verbose = 1; % display parameter
param_solver.maxit = 30;        % maximum iteration
%param_solver.gamma = 0.5;       % stepsize (beta is equal to 2)
param_solver.tol = 1e-6;        % Tolerance to stop iterating
% Activate debug mode in order to compute the objective function at each
% iteration.
param_solver.debug_mode = 1; 

lambda =1;
