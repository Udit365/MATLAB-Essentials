% Creating a function to Compute the cost function
function J = CostFunction (x,y,theta)

m = length(y);
J = 0; % Initialize the Cost Function

% Calculating the hypothesis 
htheta = x*theta ; % (m x 1) matrix

% Calculating the cost function
J = (1/ (2*m)) * sum(power((htheta-y),2));
end
