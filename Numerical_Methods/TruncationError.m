% -------------- TRUNCATION ERROR --------------
% ================================================

%% Maclauren Series : Single Step Calculation
% ------------------------------------------------ 

n = 5; % Number of terms to be considered
a = 0.1; % Value of e's power

TrueVal = exp(a);
ApproxVal = 1;

% Running the Maclauren Series once

for i = 1:n
  ApproxVal = ApproxVal + (power(a,i)/factorial(i));
  SingleErr = abs(TrueVal - ApproxVal);
end

%% Taylor Series : Multi-step Calculation
%------------------------------------------

x = 0; %Initialize the 'x'
h = 0.01; %Initialize the step size 'h'
a = 0.1; % Value of e's power
N = a/h ; %Number of steps required for `x` to be equal to `a`.

expVal = exp(x); %Initialize the appoximate value

% Running the Taylor Series for multiple times

for i = 1:N
  expVal = exp(x) * (1+h);
  x = x+h;
  MultiErr = abs(TrueVal - expVal);
end
%----------------------------------------------------
