%--------- Partial Differentiation ---------
% =======================================================================

% Closing and Clearing Screen
% -----------------------------
close all; clear all; clc;

% Initialization
% ------------------------------

x = [0.5,1.0];
h = repmat(10^(-6),1,2);

TrueVal = [cos(x(1))*exp(-x(2)), -sin(x(1))*exp(-x(2))];

% Numerical Partial Derivative and Error
% ---------------------------------------

% Derivative w.r.t "x1"
% -----------------------

x1ft1 = x(1)+h(1);
x1ft2 = x(1)-h(1);
x2ft = x(2);

f1ft = sin(x1ft1)*exp(-x2ft);
f2ft = sin(x1ft2)*exp(-x2ft);

numDiff1 = (f1ft-f2ft)/(2*h(1));

% Derivative w.r.t "x2"
% -----------------------

x1st = x(1);
x2st1 = x(2)+h(2);
x2st2 = x(2)-h(2);

f1st = sin(x1st)*exp(-x2st1);
f2st = sin(x1st)*exp(-x2st2);

numDiff2 = (f1st-f2st)/(2*h(2));

% Scalar Gradient
%----

numDiff = [numDiff1, numDiff2];
error = TrueVal - numDiff;

% Printing the results 
% --------------------

fprintf('The true value for the partial derivative : (%f,%f)\n',TrueVal);
fprintf('The calculated value for the partial derivative : (%f,%f)\n',numDiff);
fprintf('The error associated is : (%d,%d)\n',error);

%---------------- END OF SCRIPT --------------------------------------------














