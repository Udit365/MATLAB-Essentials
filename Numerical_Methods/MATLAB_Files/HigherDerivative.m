%--------- Higher Order Differentiation With Single Variable ---------
% =======================================================================

% Closing and Clearing Screen
% -----------------------------
close all; clear all; clc;

% Initialization
% ------------------------------

x = 1; % Initiate "x"

TrueVal = -( (2*x) / ( (1+ (x^2) )^2) ); % True differential value 

h = 10^(-4); % Step size initiation

% Calculating derivative and error with central difference formulae
% --------------------------------------------------------

numDiff = (atan(x+h) - 2*atan(x) + atan(x-h)) / (h^2) ; %Second Order Derivative
Error = abs(TrueVal - numDiff); %Error

% Printing the results 
% --------------------

fprintf('The true value for the second derivative of inverse tanx : %f\n',TrueVal);
fprintf('The calculated value for the second order derivative of tanx : %f\n',numDiff);
fprintf('The error associated is : %d\n',Error);

%---------------- END OF SCRIPT --------------------------------------------
