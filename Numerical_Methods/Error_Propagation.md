## Error Propagation


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

Now, if we consider the first two terms of Taylor's series, then:

![](https://latex.codecogs.com/gif.latex?%5C%20e%5E%7B%28x&plus;h%29%7D%20%3D%20e%5Ex%20&plus;%20he%5Ex%20%3D%20e%5Ex%281&plus;h%29)

Now, if we run the Taylor's series multiple times then :

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

If we compare the errors of sigle-step and multi-step modes of calculation then, we will find that the error is higher in case of multi-step mode of calculation.

> ***Note :***
</br>The error in multi-step mode of calculation decreases with decrease in `h` value or, increase in `N` value

Now, let's plot a chart to illustrate how the error in a multi-step mode of calculation decreases with decrease in step-size or, increase in `N`

```MATLAB
x = 0; %Initialize the 'x'
a = 0.1; % Value of e's power

expVal = exp(x); %Initialize the appoximate value
TrueVal = exp(0.1);

for p = 1:5
  h = 10^(-p);
  N = a/h;
  for i = 1:N
    expVal = exp(x) * (1+h);
    x = x+h;
  end
  MultiErr = abs(TrueVal - expVal);
  hAll(p) = h;
  errAll(p) = MultiErr;
  loglog(hAll,errAll,'-bo');
end
```

Again, it must be noted that, we have used only the first 2 terms of the Taylor's series for multi-step calculation.

Now, let's calculate the error by considering the 1st 3 terms of Taylor's series and thus :

![](https://latex.codecogs.com/gif.latex?e%5E%7B%28x&plus;h%29%7D%20%5Capprox%20e%5Ex%20&plus;%20he%5Ex%20&plus;%20%5Cfrac%7B1%7D%7B2%7Dh%5E2e%5Ex%20%3D%20e%5Ex%281%20&plus;%20h%20&plus;%200.5h%5E2%29)

Now, let's see how the error behaves when we add extra term on the series :

```MATLAB
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
````
So, we can see that, the error further decreases when we take more terms of the series into consideration.

### Types of Truncation error

There are 2 types of truncation error :
1. Local Truncation error
2. Global Truncation error

##### Local Truncation error

The error obtained due to the calculation of *`f(x)`* in a single-step mode.

![](https://latex.codecogs.com/gif.latex?LTE%20%5Cpropto%20h%5E%7Bn&plus;1%7D)

##### Global Truncation error

The error obtained due to multi-step calculation of *`f(x)`* in a multi-step mode.

So, *`f(a+2h)`* is affected by
- error in *`f(a+h)`* and
- error in *`f(a+2h)`*

*`GTE`* is error in obtaining ![](https://latex.codecogs.com/gif.latex?f%28a&plus;Nh%29%20%5Csim%20O%28h%5En%29)

>***Note :***
</br> Usually the `GTE > LTE`
