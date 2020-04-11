# Loops
---

The two major loops present in MATLAB are :
1. `for` Loop
2. `while` Loop

## `for` Loop
---
The `for` loop is used when a set of operations are to be repeated for a specific number of times.

The below `for` loop syntax shows, how we can execute a certain code for 10 times :
```matlab
for i = 1:10
    <statement 1> ;
    '
    '
    <statement n> ;
end
```
### Example of `for` Loop :
---
> Problem Statement :
    Find the first 10 terms of a fibonacci series.

***Solution :***
```matlab
% Define the number of times the loop needs to be executed
n = 10;

% Create an array to store the numbers
forfibo = [1,1];

% Run the for-loop
for i = 3:n
    forfibo(i) = forfibo(i-1) + forfibo(i-2);
end

% Execute the result
forfibo
```

## `while` Loop
---
The `while` loop is used when a set of operations is to be repeated if a certain condition is met.
So, in case of `while` loop, we actually don't know that how many times we need to execute the code.

The below `while` loop syntax shows, how we can execute a certain code only when the given codnition is satisfied :
```matlab
while i < 10
    <statement 1> ;
    '
    '
    <statement n> ;
    i = i + 1;
end
```

### Example of `while` Loop :
---
>Problem Statement:
    Find all the terms of a fibonacci series les than 200

***Solution :***
```matlab
% Create an array to store the numbers
fiboWhile = [1,1];

% Run the while-loop
while (fiboWhile (end) < 200)
    fiboNew = fiboWhile (end) + fiboWhile (end-1);
    fiboWhile = [fiboWhile, fiboNew];
end

% Execute the result
fiboWhile = fiboWhile(1 : end-1)
```
In the `while` loop solution, we get the array with last element exceeeding the condition, i.e., greater than *200* because, the number executed as a result of     `(final loop execution - 1)` th loop,

Thus, to not show that number, we pass the following argument after the loop :

```matlab
fiboWhile = fiboWhile(1 : end-1)
```
Alternatively, we can also pass the following argument that basically converts the last number to *null* :
```matlab
fiboWhile (end) = {}
```
Let's see another example of `while` loop

>Problem Statement :
    Calculate the location of the ball thrown upwards at every 0.1 seconds until it reaches the ground when the initial velocity is 20 m/s.

***Solution :***
```matlab
% Initiate variables

u = 20;
g = 9.8;
t = 0;
y = 0;

% Run the loop
while (y >= 0)
    disp (["At Time = ",num2str(t), " Location = ", num2str(y)])
    t = t + 0.1;
    y = u * t - ( 0.5 * g * (t ^ 2) );
end
```

    











