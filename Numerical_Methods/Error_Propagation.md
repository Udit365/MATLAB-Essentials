There are generally two modes for calculating the value of a function :

1. Single Step
2. Multiple Step

Let's say we need to calculate the value of ![](https://latex.codecogs.com/gif.latex?%5C%20e%5E%7B0.1%7D) then, we can use *Maclauren Series* to calculate it in a single step, as follows :

```MATLAB
n = 5; % Number of terms to be considered
a = 0.1; % Value of e's power

TrueVal = exp(a);
ApproxVal = 1;

% Running the Maclauren Series once

for i = 1:n
  ApproxVal = ApproxVal + (power(a,i)/factorial(i));
  SingleErr = abs(TrueVal - ApproxVal);
end
```
We can also use the *Taylor's Series* to calculate ![](https://latex.codecogs.com/gif.latex?%5C%20e%5E%7B0.1%7D) in a stepped manner with a step size of `h = 0.01`

So, the Taylor's series is given by :

![](https://latex.codecogs.com/gif.latex?f%27%28x&plus;h%29%20%3D%20f%28x%29%20&plus;%20hf%27%28x%29%20&plus;%20%5Cfrac%7Bh%5E2%7D%7B2%7Df%27%27%28x%29&plus;...%20%5CRightarrow%20f%27%28x%29%20%3D%20%5Cfrac%7Bf%28x&plus;h%29-f%28x%29%7D%7Bh%7D)

For a stepped calculation :

Let's initialize

`x = 0` and

`step size (h)  = 0.01`

Also, from the rule of derivaties, we know that :

![](https://latex.codecogs.com/gif.latex?%5C%20e%5E%7B%28x&plus;h%29%7D%20%3D%20e%5Ex%20&plus;%20he%5Ex%20%3D%20e%5Ex%281&plus;h%29)

So, if we run the Taylor's series multiple times then :

![](https://latex.codecogs.com/gif.latex?%5C%20e%5E%7B%280&plus;0.01%29%7D%20%3D%20e%5E%7B0.01%7D%20%3D%20e%5E0%281&plus;0.01%29)

![](https://latex.codecogs.com/gif.latex?%5C%20e%5E%7B%280.01&plus;0.01%29%7D%20%3D%20e%5E%7B0.02%7D%20%3D%20e%5E%7B0.01%7D%281&plus;0.01%29)

![](https://latex.codecogs.com/gif.latex?%5C%20e%5E%7B%280.02&plus;0.01%29%7D%20%3D%20e%5E%7B0.03%7D%20%3D%20e%5E%7B0.02%7D%281&plus;0.01%29)
</br>.</br>.</br>.</br>
![](https://latex.codecogs.com/gif.latex?%5C%20e%5E%7B%280.09&plus;0.01%29%7D%20%3D%20e%5E%7B0.1%7D%20%3D%20e%5E%7B0.09%7D%281&plus;0.01%29)

Let's perform this multi-step calculation in MATLAB to calculate ![](https://latex.codecogs.com/gif.latex?%5C%20e%5E%7B0.1%7D) :

```MATLAB
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
```
