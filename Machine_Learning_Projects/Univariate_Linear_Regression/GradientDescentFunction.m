function [theta, J_history] = GradientDescentFunction(x,y,theta,alpha,iterations)
  
m = length(y);
J_history = zeros(iterations,1);

for iter = 1:iterations
  
  htheta = x*theta; 
  delta = (1/m)* sum( repmat((htheta - y),1,2).* x );
  theta = (theta' - (alpha * delta))';
  
% Cost at each iterations :

J_history(iter) = CostFunction(x,y,theta);

end

end
