%--------- Numerical Integration - Single Application ---------
% =======================================================================

% Closing and Clearing Screen
% -----------------------------
close all; clear all; clc;

% Initialization
% ------------------------------

a = 1;
b = 2;

n = [2,5,10,20];

TrueVal_a = a - ((a^2)/2) + a*log(a);
TrueVal_b = b - ((b^2)/2) + b*log(b);

TrueVal_value = TrueVal_b - TrueVal_a;
TrueVal = repmat(TrueVal_value,1,4);

%% Given Function :

function Func = Intfunc(x)
  Func = 2 - x + log(x);
end


%% Trapizoidal Rule (Multiple Application)

StepSize = zeros(1,4);
ApproxVal = zeros(1,4);
ErrorVal = zeros(1,4);


for i = 1:4
N = n(i);
h = (b-a)/N;


Intervals = a:h:b;
Fvec = Intfunc(Intervals);

Ivals = (h/2) * (Fvec(:,1:end-1) + Fvec(:,2:end));

StepSize(i) = h;
ApproxVal(i) = sum(Ivals);
ErrorVal(i) = abs(TrueVal(i) - ApproxVal(i));
end

% Printing the error
fprintf('BY USING THE MULTI-STEP TRAPIZIDAL RULE FORMULA\n------------------------------------------\n')
fprintf(' The true value of the numerical integration is : %f\n',TrueVal(1));
for i = 1:4
fprintf('\n For a step size = %f, the value of the numerical integration by Trapizoidal method = %f and the error = %d\n',StepSize(i),ApproxVal(i),ErrorVal(i))
end

%% Using the trapz() function

for i = 1:4
N = n(i);
h = (b-a)/N;


Intervals = a:h:b;
Fvec = Intfunc(Intervals);

Ivals = trapz(Intervals,Fvec);

StepSize(i) = h;
ApproxVal(i) = sum(Ivals);
ErrorVal(i) = abs(TrueVal(i) - ApproxVal(i));
end

% Printing the error
fprintf('\n\nBY USING trapz() FUNCTION\n------------------------------------------\n')
fprintf(' The true value of the numerical integration is : %f\n',TrueVal(1));
for i = 1:4
fprintf('\n For a step size = %f, the value of the numerical integration by Trapizoidal method = %f and the error = %d\n',StepSize(i),ApproxVal(i),ErrorVal(i))
end

%---------------- END OF SCRIPT --------------------------------------------