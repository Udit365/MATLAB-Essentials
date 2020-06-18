## Numerical Differentiation

From the definition of _`f'(x)`_ :

![](https://latex.codecogs.com/gif.latex?f%27%28x%29%20%3D%20%5Clim_%7Bh%5Cto%200%7D%5Cfrac%7Bf%28x+h%29-f%28x%29%7D%7Bh%7D%20%5CRightarrow%20f%27%28x%29%20%5Capprox%20%5Cfrac%7Bf%28x+h%29-f%28x%29%7D%7Bh%7D)

The above formula to find the derivative of _`f(x)`_ is called the _forward difference formula_, however, there are other two types of formula as well to find the derivative, as follows :

**_Backward Difference Formula :_**

![](http://latex2png.com/pngs/1ed32630c6956ffa1e8a7f3e022826ef.png)

**_Central Difference Formula :_**

![](http://latex2png.com/pngs/8d554bbcb099dc6773aadfdc60b3e168.png)

However, the accuracy of both forward and backward difference formula is ![](http://latex2png.com/pngs/667959016b5bed7c1c9f08884b652222.png), whereas, central difference formula is more accrate, i.e., accuracy = ![](http://latex2png.com/pngs/b4643694b3d0d3d3dafa4b8b6f3cb245.png).

So, every time we decrease the step-size (`h`) by a factor of `10`, the error decrease by a factor of `10` for forward and backward difference formula and that of a factor of `100` with central difference formula.

**_Example-1 :_**

Find the error in finding the derivative of ![](http://latex2png.com/pngs/d82f68d2ea96363b2efdf2d5eb23dfd9.png) using forward, backward and central difference formula, when the step size is ![](http://latex2png.com/pngs/02a227ed02ebc1f37247850f33c67c5c.png).

**_Solution :_**
The MATLAB code for the solution of the above problem is :

```MATLAB
x = 1; % Initiate "x"

TrueVal = 1/(1+(x^2)); % True differential value

h = 10^(-4); % Step size initiation

% Calculating derivative with various difference formulae
% --------------------------------------------------------

ForwardDiff = (atan(x+h)-atan(x))/h;
BackwardDiff = (atan(x)-atan(x-h))/h;
CentralDiff = (atan(x+h)-atan(x-h))/(2*h);

% Calculating error associated with various difference formulae
% ----------------------------------------------------------------

ForwardErr = abs(TrueVal - ForwardDiff);
BackwardErr = abs(TrueVal - BackwardDiff);
CentralErr = abs(TrueVal - CentralDiff);

% Printing the errors
% --------------------

fprintf('The error with forward difference formula is : %f\n',ForwardErr);
fprintf('The error with backward difference formula is : %f\n',BackwardErr);
fprintf('The error with central difference formula is : %d\n',CentralErr);
```

The result of the above MATLAB code shows how the error is significantly less in case of central difference formula.

### Higher Order Derivatives

---

The formulae for higher order derivaties with single variable using central difference formula is :

**_Second Order Derivative :_**

![](http://latex2png.com/pngs/2b9773a58e8dfdd1eac8f45ab3de394e.png) ; ![](http://latex2png.com/pngs/a8ccca787d6b130dd9d7e41e533c04f1.png)

**_Third Order Derivative :_**

![](http://latex2png.com/pngs/fb5ca4b9297afc0776aa46ba3fc1b6ea.png) ; ![](http://latex2png.com/pngs/a8ccca787d6b130dd9d7e41e533c04f1.png)

**_Example_**

The double derivative of ![](http://latex2png.com/pngs/d82f68d2ea96363b2efdf2d5eb23dfd9.png) :

![](http://latex2png.com/pngs/c7514d0c56395a9899196866083ee1dd.png)

Find out the double derivaties of ![](http://latex2png.com/pngs/d82f68d2ea96363b2efdf2d5eb23dfd9.png) in MATLAB with a step size of ![](http://latex2png.com/pngs/02a227ed02ebc1f37247850f33c67c5c.png)

**_Solution :_**

The MATLAB code is :

```MATLAB
x = 1; % Initiate "x"

TrueVal = -( (2*x) / ( (1+ (x^2) )^2) ); % True differential value

h = 10^(-4); % Step size initiation

% Calculating derivative and error with central difference formulae
% --------------------------------------------------------

numDiff = (atan(x+h) - 2*atan(x) + atan(x-h)) / (h^2) ; %Second Order Derivative
Error = abs(TrueVal - numDiff); %Error

% Printing the results
% --------------------

fprintf('The true value for the second derivative of inverse tanx : %f\n',TrueVal);
fprintf('The calculated value for the second order derivative of tanx : %f\n',numDiff);
fprintf('The error associated is : %d\n',Error);
```

**_Physical Example_**

Consider :</br>
The rate of chemical reaction is given by :
![](http://latex2png.com/pngs/3b049d9a4fbab8aa93a3763761d84e96.png)

To find ![](http://latex2png.com/pngs/dab943632dc99904084acc7325b608c3.png)
using central difference formula.

- Choose ![](http://latex2png.com/pngs/8a58f0d8090703dcdd80ef11e64820a8.png)
- Try with other values of `h`
- Optimal value of ![](http://latex2png.com/pngs/2903c884113fdad441aac72ec0471da8.png)

**_Solution :_**

The MATLAB code is :

```MATLAB
k = 1000;
EbyR = 2500;
C = 1.0;
T = 600;
h = 10^(-4);


r = k * exp(-EbyR/T) * (C^1.25); %reaction rate

TrueVal = r * (EbyR/(T^2)); %differentiation of reaction rate


% Numerical Differentiation & Error Calculation
%--------------------------------------------------

r1 = k * exp(-EbyR/(T+h)) * (C^1.25);
r2 = k * exp(-EbyR/(T-h)) * (C^1.25);

numDiff = (r1-r2)/(2*h) ;

error = abs(TrueVal - numDiff);

% Printing the results
% --------------------

fprintf('The true value is : %f\n',TrueVal);
fprintf('The numerical differentiation value is : %f\n',numDiff);
fprintf('The error associated is : %d\n',error);
```

### Partial Derivatives

---

Consider the following equation :

![](http://latex2png.com/pngs/0ae8b6aa7f1dd13f85fdc3c6c33743a6.png)

since, `f(x)` is a function of two variables, we have to find the partial derivatives as follows :

![](http://latex2png.com/pngs/bb6e564d0647bd0e9a75fdb417fb96ec.png)

Partial derivative can be represented as the gradient of a scalar,i.e :

![](http://latex2png.com/pngs/15a4e38249930c0f142b00d35d16d2e8.png)

Let's perform this partial differentiation is MATLAB :

```MATLAB
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
```
