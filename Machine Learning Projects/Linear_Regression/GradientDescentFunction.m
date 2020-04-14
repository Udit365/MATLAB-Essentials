function [theta, J_history] = GradientDescentFunction(x,y,theta,alpha,iterations)
  
m = length(y);
htheta = x*theta;
J_history = zeros(iterations,1);

for iter = 1:iterations
  
  delta = (1/m)* sum( x .* repmat((htheta - y),1,2) );
  theta = (theta' - (alpha * delta))';
  
% Cost at each iterations :

J_history(iter) = CostFunction(x,y,theta);
end

end
