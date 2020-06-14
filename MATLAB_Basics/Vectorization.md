# Vectorization

Vectorization of codes is a technique by virtue of which we can write simple and lesser code to execute a certain task.

The execution is faster and bug-free with vectorized codes.

Let's see some examples of unvectorized codes along with their vectorized forms.

### Hypothesis for Linear Regression
---
The hypothesis for linear regression is :
![](https://latex.codecogs.com/gif.latex?%5C%20h_%7B%5Ctheta%20%7D%28x%29%20%3D%20%5Csum_%7Bj%3D0%7D%5E%7Bn%7D%7B%5Ctheta%7D_j%20x_%7Bj%7D)

The matrix form of the above equation is :
![](https://latex.codecogs.com/gif.latex?%5C%20h_%7B%5Ctheta%7D%28x%29%20%3D%20%7B%5Ctheta%7D%5ETx)

Now the unvectorized implementation of this hypothesis function in MATLAB/OCTAVE would be as follows :

```MATLAB
prediction = 0.0;
for j = 1:n+1
  prediction = prediction + ( theta(j) * x(j) );
end
```
The vectorized implementation of the above code would be :

```MATLAB
prediction = theta' * x
```

### Matrix Multiplication
---
The unvectorized implementation of a matrix multiplication would be :

```MATLAB
% Define the metrices

v = zeros(10,1);
A = randn(10,10);
x = randn (10,1);

% Running the nested for loop

for i = 1:10
  for j = 1:10
    v(i) = v(i) + A(i,j)* x(j);
  end
end
````
We can vectorize the above `for` loop as follows :

```MATLAB
v = A * x
```

### Vector Addition

Suppose we want to perform the element-wise multiplication of two vectors and addition of all those resultant elements then, we can do so in an unvectorized manner as follows :

```MATLAB
% Defining the vectors

z = 0;
v = randn(7,1);
w = randn(7,1);

% Running the loop

for i = 1:7
  z = z + v(i) * w(i);
end
```

The vectorized approach for the above problem would be :

```MATLAB
z =  sum (V .* W)
```
 or, we can also write :
 ```MATLAB
 z = w' * v
 ```
