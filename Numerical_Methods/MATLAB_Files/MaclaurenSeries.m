% Maclauren Series 

% Number of terms (n)
 n = [1:5];
 
% Initialize "a"

a = 0.1;

% Initialize the vector to store approximate values :

A = ones(1,n);

% Initialize the vector to store error values :

E =zeros(1,n);

% Approximate values from Maclauren Series will be

A = A + cumsum((power(a,n)./factorial(n)));

% True value of Maclauren Series is :

T = repmat(exp(0.1),1,n);

% So, absolue error would be :

E = abs(T - A);