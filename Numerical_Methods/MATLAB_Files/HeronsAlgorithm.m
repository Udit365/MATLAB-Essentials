% ---------- Heron's Alogorithm ----------
%============================================

x = 0.6; % Intial guess for x^(0.5)
tolerance = 10^(-4); % Will stop the loop when error is below this tolerance
err = 1; % Initial guess for error

% Itrative computation
% ----------------------

while (err > tolerance)
  xNew = 0.5*(x + (2/x));
  err = abs(x - xNew)
  x = xNew;
end
