## Methods of Computation

There are two methods for computation, they are :

1. Direct Method
2. Iterative Method

#### Direct Methods
---
In a direct method, the solution is computed directly by following an algorithm (sequence of operations).

***For Example :***

Maclauren Series :

![](https://latex.codecogs.com/gif.latex?e%5E%7Ba%7D%20%3D%201%20&plus;%20a%20&plus;%20%5Cfrac%7Ba%5E2%7D%7B2%21%7D%20&plus;%20%5Cfrac%7Ba%5E3%7D%7B3%21%7D%20&plus;%20....%20&plus;%20%5Cfrac%7Ba%5En%7D%7Bn%21%7D)

Taylor's Series :

![](https://latex.codecogs.com/gif.latex?f%27%28x&plus;h%29%20%3D%20f%28x%29%20&plus;%20hf%27%28x%29%20&plus;%20%5Cfrac%7Bh%5E2%7D%7B2%7Df%27%27%28x%29&plus;...%20%5CRightarrow%20f%27%28x%29%20%3D%20%5Cfrac%7Bf%28x&plus;h%29-f%28x%29%7D%7Bh%7D)

#### Iterative Methods
---

In an iterative method, the initial guess is improved repeatedly using some coputational steps until convergence.

##### Heron's Algorithm

It is one of the first iterative numerical algorithm that computes the value of ![](https://latex.codecogs.com/gif.latex?%5Csqrt%7B2%7D) by starting with an initial guess and iteratively using the following expression :

![](https://latex.codecogs.com/gif.latex?%5C%20x%5E%7B%28i&plus;1%29%7D%20%3D%20%5Cfrac%7B1%7D%7B2%7D%5Cleft%20%28%20x%5E%7Bi%7D&plus;%5Cfrac%7B2%7D%7Bx%5Ei%7D%20%5Cright%20%29)

The convergence occurs when, there is no significant change in the result with iterations or, when the error is close to zero.

Let's run this Heron's algorithm in MATLAB to compute ![](https://latex.codecogs.com/gif.latex?%5Csqrt%7B2%7D) :

```MATLAB



```
