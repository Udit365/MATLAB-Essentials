
% ------------ Taylor Series ------------
% =========================================

% Variable Initiation

x = 1;
TrueVal = 1/(1+ x^2) ;

for i = 2:7
	h = 10^(-i);
	ApproxVal = (atan(x+h) - atan(x))/h;
    err = abs(TrueVal - ApproxVal);
    
    hvals(i-1) = h;
    errvals(i-1) = err;
    
end

%% Plot error vs. step size 

loglog(hvals,errvals);


	