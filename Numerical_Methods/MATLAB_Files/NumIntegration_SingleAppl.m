%--------- Numerical Integration - Single Application ---------
% =======================================================================

% Closing and Clearing Screen
% -----------------------------
close all; clear all; clc;

% Initialization
% ------------------------------

a = 1;
b = 2;


TrueVal_a = a - ((a^2)/2) + a*log(a);
TrueVal_b = b - ((b^2)/2) + b*log(b);

TrueVal = TrueVal_b - TrueVal_a;

%% Given Function :

function Func = Intfunc(x)
  Func = 2 - x + log(x);
end


%% Trapizoidal Rule (Single Application)
hT = b-a;
ApproxVal_Trapiz = (hT/2) * (Intfunc(a) + Intfunc(a+hT));
Error_Trapiz = abs(TrueVal - ApproxVal_Trapiz);

% Printing the error

fprintf('The true value of the numerical integration is : %f\n',TrueVal);
fprintf('The value of the numerical integration by Trapizoidal method is : %f\n',ApproxVal_Trapiz);
fprintf('The error associated with Trapizoidal Method is : %d\n',Error_Trapiz);

%% Simpson's One-Third Rule (Single Application)
hS = (b-a)/2;
ApproxVal_Simp13 = (hS/3) * ( Intfunc(a) + 4*Intfunc(a+hS) + Intfunc(a+(2*hS)) );
Error_Simp13 = abs(TrueVal - ApproxVal_Simp13);

% Printing the error

fprintf('The value of the numerical integration by Simpson one-third rule is : %f\n',ApproxVal_Simp13);
fprintf('The error associated with Simpson one-third rule is : %d\n',Error_Simp13);

%---------------- END OF SCRIPT --------------------------------------------





