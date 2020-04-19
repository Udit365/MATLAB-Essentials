% --------- Numerical Differentiation With Single Variable ---------
% =======================================================================

% Closing and Clearing Screen
% -----------------------------
close all; clear all; clc;

% Initialization
% ------------------------------

x = 1; % Initiate "x"

TrueVal = 1/(1+(x^2)); % True differential value 

h = 10^(-4); % Step size initiation

% Calculating derivative with various difference formulae
% --------------------------------------------------------

ForwardDiff = (atan(x+h)-atan(x))/h;
BackwardDiff = (atan(x)-atan(x-h))/h;
CentralDiff = (atan(x+h)-atan(x-h))/(2*h);

% Calculating error associated with various difference formulae
% ----------------------------------------------------------------

ForwardErr = abs(TrueVal - ForwardDiff);
BackwardErr = abs(TrueVal - BackwardDiff);
CentralErr = abs(TrueVal - CentralDiff);

% Printing the errors 
% --------------------

fprintf("The error with forward difference formula is : %f\n",ForwardErr);
fprintf("The error with backward difference formula is : %f\n",BackwardErr);
fprintf("The error with central difference formula is : %d\n",CentralErr);

%---------------- END OF SCRIPT --------------------------------------------
