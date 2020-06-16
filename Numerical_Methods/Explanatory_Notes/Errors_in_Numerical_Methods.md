# ERRORS IN NUMERICAL METHODS

Error is defined as the difference between the true value and the approximate value.

> Error = True Value - Approximate Value

**_For example :_**
If
`T = 2.3758932`
and we approximate `T` as :
`A = 2.3758`

Then, Error (E) is

> `E = T - A`

    `E = 2.3758932 - 2.3758`
    `E = 0.0000932`

## Types of Error

There are 3 types of error :

##### 1. Absolute Error (![](https://latex.codecogs.com/gif.latex?%5Cepsilon))

The absolute error is defined as follows :

![](https://latex.codecogs.com/gif.latex?%5Cepsilon%20%3D%20%5Cleft%20%7C%20T%20-%20A%20%5Cright%20%7C)

##### 2. Relative Error (![](https://latex.codecogs.com/gif.latex?%5Cepsilon_%7Br%7D))

The relative error is defined as follows :

![](https://latex.codecogs.com/gif.latex?%5Cepsilon_%7Br%7D%20%3D%20%5Cfrac%7BT-A%7D%7BT%7D)

##### 3. Relative Percentage Error (![](https://latex.codecogs.com/gif.latex?%5Cepsilon_%7Bp%7D))

The relative error is defined as follows :

![](https://latex.codecogs.com/gif.latex?%5Cepsilon_%7Bp%7D%20%3D%20%5Cfrac%7BT-A%7D%7BT%7D%20%5Ctimes%20100%5C%25)

## Cause of Error

---

There are mainly two causes that arises error, they are :

1. Error due to rounding-off
2. Error due to chopping

#### Error due to rounding-off

---

Error arises due to rounding-off a number is called round-off error.

**_For example :_**
If
`T = 0.52768`
and by chopping, we approximate `T` as :
`A = 0.528`

Then, Absolute round-off error (E) is :

```
E = |T - A|
E = |0.52768 - 0.528|
E = |-0.00032|
E = 0.00032
```

#### Error due to chopping

---

Error arises due to direct chopping-off a number to some significant decimal places is called chopping error.

**_For example :_**
If
`T = 0.52768`
and by chopping upto 3 significant places after the decimal point we approximate `T` as :
`A = 0.527`

Then, Absolute chopping error (E) is :

```
E = |T - A|
E = |0.52768 - 0.527|
E = |-0.00068|
E = 0.00068
```

From the perspective of applied mathematics, there can be 3 types of error as well, such as :

##### 1. Programming Error

Error arises due to the computer programming is called _Programming error_.

##### 2. Experimental Error

Error that arises due to the measurement of data is called as _experimental error_

##### 3. Truncation Error

Error that arises due to approximation of an infinite series by its first few terms is called truncation error.

Truncation error lowers as we take more and more terms of the infinite series into account.

Let's see the example in MATLAB

**_Example-1 :_**

Let's take the Maclauren series :
![](https://latex.codecogs.com/gif.latex?e%5E%7Ba%7D%20%3D%201%20+%20a%20+%20%5Cfrac%7Ba%5E2%7D%7B2%21%7D%20+%20%5Cfrac%7Ba%5E3%7D%7B3%21%7D%20+%20....%20+%20%5Cfrac%7Ba%5En%7D%7Bn%21%7D)

Let's see how the error decreases with increase in terms on the series :

```MATLAB
% Maclauren Series

% Number of terms (n)
 n = [1:5];

% Initialize "a"

a = 0.1;

% Initialize the vector to store approximate values :

A = ones(1,5);

% Initialize the vector to store error values :

E =zeros(1,5);

% Approximate values from Maclauren Series will be

A = A + cumsum((power(a,n)./factorial(n)));

% True value of Maclauren Series is :

T = repmat(exp(0.1),1,5);

% So, absolue error would be :

E = abs(T - A);

% plotting

loglog(n,E);
```

> **_Notes :_**

    - More terms leads to lower error
    - Smaller `a` leads to low error
    - Slope gives the order of accuracy

## Machine Precision

---

We can think of the machine precession as the least count of any measurement system.

**_For example :_**
The least count of ruler is `0.1 mm` and if we want to measure something whose thickness/length is less that `0.1 mm` then, we have to use another measurement system called a _"Vernier Caliper"_, that has a least count of `0.01 mm`.

Just like these measuring instruments, real numbers also have a _"least count"_ and therefore the _"Machine Precision"_ depends upon the number of bytes to store a real number.

#### Floating Point Representation

---

The floating point representation of a number is as follows :

![](https://latex.codecogs.com/gif.latex?%5C%2023.217) is represented as ![](https://latex.codecogs.com/gif.latex?%5C%200.23217%5Ctimes%2010%5E2) and
![](https://latex.codecogs.com/gif.latex?%5C%2023.218) is represented as ![](https://latex.codecogs.com/gif.latex?%5C%200.23218%5Ctimes%2010%5E2)

but, if the machine can store upto 5 digits after the decimal point and then, we have a number like ![](https://latex.codecogs.com/gif.latex?%5C%2023.2172) then, it can be represented as ![](https://latex.codecogs.com/gif.latex?%5C%200.23217%5Ctimes%2010%5E2)

Therefore, now the ![](https://latex.codecogs.com/gif.latex?%5C%2023.217) and ![](https://latex.codecogs.com/gif.latex?%5C%2023.2172) has the same floating point representation, although the two values are not exactly equal to each other.

So, we can say that the _least count_ of this decimal machine is ![](https://latex.codecogs.com/gif.latex?%5Csim%200.00001%5Cleft%20%7C%20x%20%5Cright%20%7C) or, ![](https://latex.codecogs.com/gif.latex?%5C10%5E%7B-5%7D)

To get the _machine precesion_ of MATLAB, we have to pass the `eps` command and its found to be ![](https://latex.codecogs.com/gif.latex?%5C%202.2204e%5E%7B-16%7D) or, ![](https://latex.codecogs.com/gif.latex?%5C%202%5E%7B-52%7D) or, ![](https://latex.codecogs.com/gif.latex?%5C%2010%5E%7B-15%7D).

## Effect of Round-off errors

---

From the definition of _`f'(x)`_ :

![](https://latex.codecogs.com/gif.latex?f%27%28x%29%20%3D%20%5Clim_%7Bh%5Cto%200%7D%5Cfrac%7Bf%28x+h%29-f%28x%29%7D%7Bh%7D%20%5CRightarrow%20f%27%28x%29%20%5Capprox%20%5Cfrac%7Bf%28x+h%29-f%28x%29%7D%7Bh%7D)

From the above equation, it is evident that smaller `h` values, i.e., `h` value much closer to zero is likely to minimize the error

From Taylor's series :

![](https://latex.codecogs.com/gif.latex?f%27%28x+h%29%20%3D%20f%28x%29%20+%20hf%27%28x%29%20+%20%5Cfrac%7Bh%5E2%7D%7B2%7Df%27%27%28x%29+...%20%5CRightarrow%20f%27%28x%29%20%3D%20%5Cfrac%7Bf%28x+h%29-f%28x%29%7D%7Bh%7D)

we know that :

![](https://latex.codecogs.com/gif.latex?%5C%20%5Cfrac%7B%5Cmathrm%7Bd%7D%20%7D%7B%5Cmathrm%7Bd%7D%20x%7D%28tan%5E%7B-1%7Dx%20%29%20%3D%20%5Cfrac%7B1%7D%7B1%20+%20a%5E2%7D)

Now, let's find out the error between the derivative of _inverse tan(x)_ found as per the above formula with that of found using the Taylor's series with decreasing value of `h`

In MATLAB, the code will be as follows :

```MATLAB
x = 1;
TrueVal = 1/(1+ x^2) ;

for i = 2:7
	h = 10^(-i);
	ApproxVal = (atan(x+h) - atan(x))/h;
    err = abs(TrueVal - ApproxVal);

    hvals(i-1) = h;
    errvals(i-1) = err;

end

%% Plot error vs. step size
loglog(hvals,errvals);
```

By running the above code, we can see that our error decreases as we decrease the value of `h`.

> **_Notes :_**
> The error term is a function of `h` and thats why in the loglog plot, we got a straight line with slope = 1.
> The straight line slope is going to be same as the order of accuracy of the numerical scheme.

But, let's plot the same graph by further decreasing the `h` value , let's say upto the order of ![](https://latex.codecogs.com/gif.latex?%5C%2010%5E%7B-20%7D) :

```MATLAB
x = 1;
TrueVal = 1/(1+ x^2) ;

for i = 2:20
	h = 10^(-i);
	ApproxVal = (atan(x+h) - atan(x))/h;
    err = abs(TrueVal - ApproxVal);

    hvals(i-1) = h;
    errvals(i-1) = err;

end

%% Plot error vs. step size
loglog(hvals,errvals);
```

Now, we can see that the error decreases with `h` but, upto a certain value of `h` and after that it starts increasing.

This is because the _machine precision_ of MATLAB is ![](https://latex.codecogs.com/gif.latex?%5C%202.2204e%5E%7B-16%7D) and when our `h` value decreases below it, we observe the _round-off error_.

> **_Notes :_**

    Truncation error decreases with `h`, however, machine precesion can determine how small our `h` should be.
    Round-off error increases with `h`.
