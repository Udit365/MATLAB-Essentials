%% ==================== Initialize ====================

% Clearing The Screen & Variables if any
clear;
close all;
clc

%% ==================== Data Loading ====================

% Load the data

data = load ('F:\Github Repos\MATLAB-Essentials\Datasets\PopulationProfit.txt');

% Splitting data into "x" and "y"

x = data(:,1);
y = data(:,2); % (m x 1) matrix
fprintf("Press \''Enter\'' to plot the data\n");
pause;

%% ==================== Plotting ====================

% Plotting the data

plot(x,y,"xr","MarkerSize",10);
xlabel("Profit in 000$");
ylabel("Population of City in 000s");
title("Population ~ Profit Corelation");

%% ==================== Computing The Cost Function ====================
fprintf("Press \''Enter\'' to compute the cost function\n");
pause;

% Initialize Number of training example (m), Learning rate (alpha) and iterations

m = length(y);
iterations = 1500;
alpha = 0.01;

% Adding the bias term to `x` and initializing `theta`

x = [ones(m,1),data(:,1)]; % (m x 2) matrix
theta = zeros(2,1); % (2 x 1) matrix

% Calculating the hypothesis

htheta = x*theta ; % (m x 1) matrix

% Calculate the cost function

J = (1/ (2*m)) * sum(power((htheta-y),2));
fprintf('With theta = [0 ; 0]\nCost computed = %f\n', J);

% Running the Gradient Descent alogithm to minimize theta

theta = GradientDescentFunction(x,y,theta,alpha,iterations)
