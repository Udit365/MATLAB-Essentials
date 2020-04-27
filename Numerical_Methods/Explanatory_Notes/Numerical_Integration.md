## Numerical Integration

Numerical integration is nothing but a way to find out the area under a curve.

The formulae used to calculate the area under the curve is collectively known as "*Newton cotes formulae*".

However, there are two ways to apply the formulae ,i.e.,
- Single-Step
- Multi-Step

#### Single Application of Newton Cotes Formulae :

Formulae to find out the area under the curve is :

##### 1. Trapizoidal Rule

The formula for this rule is :

![](http://latex2png.com/pngs/afd490771b37750188da4bdc7bf6a6d9.png)

where,</br>
![](http://latex2png.com/pngs/11509832c68b98cc263c64a45ce33551.png)

The LTE is : ![](http://latex2png.com/pngs/eb9c11b001a679cc0f380e9eb2cf943b.png)

##### 2. Simpson's One-third Rule
The formula for Simpson's one-third rule is :

![](http://latex2png.com/pngs/a2697abfe06c5ff4688b1167f20a7cce.png)

where,</br>
![](http://latex2png.com/pngs/59e25ead6537a1a2b3a19025c9533da9.png)


The LTE is : ![](http://latex2png.com/pngs/78e858e24b5aa38c5183278b7da10ba2.png)

##### 3. Simpson's Three-eigth Rule
The formula for the Simpson's three-eigth rule is :

![](http://latex2png.com/pngs/adb99768d380e629e2cac49fc2ae4e14.png)

where,</br>
![](http://latex2png.com/pngs/74889587cb79d1bc11f382f49432b3de.png)

The LTE is : ![](http://latex2png.com/pngs/78e858e24b5aa38c5183278b7da10ba2.png)


The above methods are collectively called as "*Newton Cotes Formulae*".

Looking at the LTE of the above three mdethods, we can say that Simpson's one-third rule and Simpson's three-eigth rule are more accurate than the Trapizoidal rule.

Let's perform numerical integration upon the following problem :

***Problem:***</br>
Consider the following equation :

![](http://latex2png.com/pngs/46823e64a155ad20fdedb36613e5a609.png)

The integration of the above function, gives us the result as :

![](http://latex2png.com/pngs/a38bb10f7f5764939b6db5f8e50f05e4.png)

Use Trapizoidal and Simpson one-third rules to compare the results with the true value.

***Solution :***
The MATLAB code for the above problem is :

```MATLAB
a = 1;
b = 2;


TrueVal_a = a - ((a^2)/2) + a*log(a);
TrueVal_b = b - ((b^2)/2) + b*log(b);

TrueVal = TrueVal_b - TrueVal_a;

%% Given Function :

function Func = Intfunc(x)
  Func = 2 - x + log(x);
end


%% Trapizoidal Rule (Single Application)
hT = b-a;
ApproxVal_Trapiz = (hT/2) * (Intfunc(a) + Intfunc(a+hT));
Error_Trapiz = abs(TrueVal - ApproxVal_Trapiz);

% Printing the error

fprintf('The true value of the numerical integration is : %f\n',TrueVal);
fprintf('The value of the numerical integration by Trapizoidal method is : %f\n',ApproxVal_Trapiz);
fprintf('The error associated with Trapizoidal Method is : %d\n',Error_Trapiz);

%% Simpson's One-Third Rule (Single Application)
hS = (b-a)/2;
ApproxVal_Simp13 = (hS/3) * ( Intfunc(a) + 4*Intfunc(a+hS) + Intfunc(a+(2*hS)) );
Error_Simp13 = abs(TrueVal - ApproxVal_Simp13);

% Printing the error

fprintf('The value of the numerical integration by Simpson one-third rule is : %f\n',ApproxVal_Simp13);
fprintf('The error associated with Simpson one-third rule is : %d\n',Error_Simp13);
```

#### Multi-step Application of Newton Cotes Formulae :

Formulae to find out the area under the curve is :

##### Trapizoidal Rule

The formula for this rule is :

*For interval-1*

![](http://latex2png.com/pngs/c857807183b9ca6e170ee4cfe063f937.png)

*For interval-2*

![](http://latex2png.com/pngs/744bb7ae0e5c25b11d46e9b3f238c159.png)

and so on... ![](http://latex2png.com/pngs/a6b47ac35ac0a0866470a14b0b5dcffc.png)

where,</br>
![](http://latex2png.com/pngs/2e6d36e852c40008dad60d8f111dda9a.png)

The LTE is : ![](http://latex2png.com/pngs/eb9c11b001a679cc0f380e9eb2cf943b.png)

Let's perform numerical integration upon the following problem :

***Problem-2:***</br>
Consider the following equation :

![](http://latex2png.com/pngs/46823e64a155ad20fdedb36613e5a609.png)

The integration of the above function, gives us the result as :

![](http://latex2png.com/pngs/a38bb10f7f5764939b6db5f8e50f05e4.png)

Compute the intergral using ![](http://latex2png.com/pngs/c0e40d86cc130634d1b2a78aa6c0a3a9.png) intervals

Use Trapizoidal rule and make a log-log plot of error vs. step-size.

***Solution :***
The MATLAB code for the above problem is :

```MATLAB
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

fprintf(' The true value of the numerical integration is : %f\n',TrueVal(1));
for i = 1:4
fprintf('\n For a step size = %f, the value of the numerical integration by Trapizoidal method = %f and the error = %d\n',StepSize(i),ApproxVal(i),ErrorVal(i))
end
```

The GTE for the various Newton cotes equation are :

GTE : Trapizoidal Rule = ![](http://latex2png.com/pngs/b4643694b3d0d3d3dafa4b8b6f3cb245.png)</br>
GTE : Simpson one-third Rule = ![](http://latex2png.com/pngs/8cbb89ef5f86e6883acc3d5072d68fbd.png)</br>
GTE : Simpson three-eigth Rule = ![](http://latex2png.com/pngs/8cbb89ef5f86e6883acc3d5072d68fbd.png)</br>

The `I` value in the Trapizoidal rule can also be calculated directly, as follows :






Let's solve the problem-2 using the above direct method equation
```MATLAB



```


#### In-Build Intergration Formula In MATLAB

We can solve the numerical integration problem directly using the in-build functions in MATLAB.

##### Function : `trapz()`

The syntax for the `trapz()` function is :
```MATLAB
I = trapz(x, fval);
```

In the above formula :

`fval` - specified at corresponding `x` values

Now, let's solve the problem-2 by using the `trapz()` function:

```MATLAB
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

Ivals = trapz(Intervals,Fvec);

StepSize(i) = h;
ApproxVal(i) = sum(Ivals);
ErrorVal(i) = abs(TrueVal(i) - ApproxVal(i));
end

% Printing the error
fprintf(' The true value of the numerical integration is : %f\n',TrueVal(1));
for i = 1:4
fprintf('\n For a step size = %f, the value of the numerical integration by Trapizoidal method = %f and the error = %d\n',StepSize(i),ApproxVal(i),ErrorVal(i))
end
```
##### Function : `quad()`








#### Practical Problem

Let's consider a reactor design problem, given by :

![](http://latex2png.com/pngs/30426738ea2260975f254ecdee723a6e.png)

for `F = 10`, `k = 5` and `conv = 0.5`


***Solution :***
```MATLAB


```
