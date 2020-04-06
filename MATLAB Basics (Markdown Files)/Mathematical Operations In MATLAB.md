# Mathematical Operations in MATLAB
---
Some of the basic mathematical operations that can be performed in MATLAB are :
1. Arithmetic Operations
2. Logarithimic Operations
3. Trigonometric Operations
4. Rounding-off Operations

Now, let's see how to write MATLAB codes for the above operations

### 1. Arithmetic Operations
---
Let's create 2 variables to perform some arithmetic operations :
```matlab
a = 50
b = 25
```
##### Addition
Adding 2 numbers/variables :
```matlab
a + b
```
##### Subtraction
Subtracting 2 numbers/variables :
```matlab
a - b
```

##### Multiplication
Multiplying 2 numbers/variables :
```matlab
a * b
```

##### Division
Dividing two numbers/variables :
```matlab
a / b
```

##### Remainder
To get remainder of two numbers :
```matlab
rem (a,b)
```

##### Power/Exponent
To get the 2 to the power 6 :
```matlab
2 ^ 6
```
or, we can also write
```matlab
pow2(2,6)
```
Similarly, to find square-root of a number/variable :
```matlab
sqrt(50)
```

### 2. Logarithimic Operations
---
To find logarithm (ln) value of a variable/number :
```matlab
log(25)
```
Similarly to find exponent (`e ^ x`) of a variable/number :
```matlab
exp(50)
```
### 3. Trigonometric Operations
---
We can apply the trigonometric functions to a number/variable as follows :
```matlab
% Sine Function
sin(60)
% Cosine Function
cos(60)
%Tangent Function
tan(60)
```
Similarly, we can also apply the inverse trigonometric functions to the numbers/variables as follows :

```matlab
% Sine Inverse Function
asin(75)
% Cosine Inverse Function
acos(75)
% Tangent Inverse Function
atan(75)
```

##### Rounding-off Operations
Let's say we have 2 decimal variables as follows :
```matlab
var1 = 5.4
var2 = 5.6
```
Now, to round-off the decimal numbers into integers, we have 3 functions :
* `round()` : Rounds-off the number to its closest integer
```matlab
round(var1)
round(var2)
```
* `ceil()` : Rounds-off the number to its larger closest integer 
```matlab
ceil(var1)
ceil(var2)
```
* `floor()` : Rounds-off the number to its smaller closest integer
```matlab
floor(var1)
floor(var2)
```
There are some special variables available in MATLAB that helps in mathematcal operations.

They are as follows :
* `pi` : Contains the number *`3.141`*
* `i` : Contains imaginary number *`0+1i`*
* `eps`: Returns the machine precesion value
* `inf` : It refers to infinity
* `NaN` : It refers to *Not a Number*,i.e., values like `0/0`,`inf/inf` etc.
* `ans` : It stores the last displayed result
* `realmax`: Contains the largest real number
* `intmax` : Contains the largest integer number
* `end` : It refers to the last element of an array
















