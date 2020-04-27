%--------- Calculating f'(x) for Arhenius reaction expression ---------
% =======================================================================
%{
  Given rate of reaction equation :
  r = k * e^(-E/RT) * C^1.25
  Given Constraints :
  k = 1000;
  E/R = 2500;
%}


% Closing and Clearing Screen
% -----------------------------
close all; clear all; clc;

% Initialization
% ------------------------------
k = 1000;
EbyR = 2500;
C = 1.0;
T = 600;
h = 10^(-4);


r = k * exp(-EbyR/T) * (C^1.25); %reaction rate

TrueVal = r * (EbyR/(T^2)); %differentiation of reaction rate


% Numerical Differentiation & Error Calculation
%--------------------------------------------------

r1 = k * exp(-EbyR/(T+h)) * (C^1.25);
r2 = k * exp(-EbyR/(T-h)) * (C^1.25);

numDiff = (r1-r2)/(2*h) ;

error = abs(TrueVal - numDiff);

% Printing the results 
% --------------------

fprintf('The true value is : %f\n',TrueVal);
fprintf('The numerical differentiation value is : %f\n',numDiff);
fprintf('The error associated is : %d\n',error);

%---------------- END OF SCRIPT --------------------------------------------









