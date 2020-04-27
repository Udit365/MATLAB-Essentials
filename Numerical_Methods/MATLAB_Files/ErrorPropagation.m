%%-------- Error Propagation --------


a = 0.1; % Value of e's power
TrueVal = exp(a);

for p = 1:5
  x = 0;
  h = 10^(-p);
  N = a/h;
  for i = 1:N
    expVal = exp(x) * (1+h);
    x = x+h;
  end
  MultiErr = abs(TrueVal - expVal);
  hAll(p) = h;
  errAll(p) = MultiErr;
  loglog(hAll,errAll,"-ob");
end
fprintf("Press Enter to see the error propagation comparision when an extra term got added in Taylor Series");
pause;

%-------------------
%% Error Propagataion-2

clear all; clc; close all;
a = 0.1; % Value of e's power
TrueVal = exp(a);

for p = 1:5
  x = 0;
  h = 10^(-p);
  N = a/h;
  for i = 1:N
    expVal1 = exp(x) * (1+h);
    expVal2 = exp(x) * (1 + h + 0.5*(h^2));
    x = x+h;
  end
  MultiErr1 = abs(TrueVal - expVal1);
  MultiErr2 = abs(TrueVal - expVal2);
  hAll(p) = h;
  errAll1(p) = MultiErr1;
  errAll2(p) = MultiErr2;
  loglog(hAll,errAll1,'-bo');
  hold on
  loglog(hAll,errAll2,'-ro');
end

%------------------------------------
