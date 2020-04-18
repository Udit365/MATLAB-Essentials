# Matrix In MATLAB
---
Under this section, we will learn about :
1. Matrix Building Functions
2. Advance Matrix Creation
3. Subsetting of Matrix
4. Scalar Operation on Matrices
5. Matrix Operations


## Matrix Building Functions :
---
In MATLAB, we have some matrix building function using which we can create some special kind of matrices, as follows :

1. `ones()`: Creates a matrix with each element as `1`.
1. `zeros()`: Creates a matrix with each element as `0`.
1. `repmat()`: Creates a matrix with each element as a constant number.
1. `eye()`: Creates an identity matrix.
1. `rand()`: Creating a matrix of random numbers.
1. `randn()`: Creating a matrix of gaussian distributed random numbers.
1. `magic()`: Creating a magic square matrix
1. `hilb()`: Creating a Hilbert's matrix
1. `diag()`: Creating a diagonal matrix or, extracting the diagonal elements of a matrix.

Now, let's see some examples of the above matrix building functions.

#### `ones()`:

Create a `(3 x 4)` matrix with all the elements as `1` :
```matlab
ones(3,4)
```
We can also use the `ones()` function to create a matrix with all the elements as `n` (where `n` can be any real number).

For example : Create a `(4 x 5)` matrix with all the elements as `2.53` :

```matlab
2.53 * ones(4,5)
```
#### `zeros()`:
Create a `(5 x 5)` matrix with all the elements as `0` :
```matlab
zeros(5)
```
similarly, to create a `(2 x 3)` matrix with all the elements as `0` :
```matlab
zeros(2,3)
```
#### `repmat()`
Crete a `(3 x 5)`matrix with all the elements as 2.5
```matlab
repmat(2.5,3,5)
```
In the above code, the first argument is the constant element, the 2nd argument is the row size and the 3rd argument is the column size.

##### `eye()`:
An identity matrix is a square matrix with diagonal elements as `1`.
To create a `(4 x 4)` identity matrix :
```matlab
eye(4)
```
If we want all the `1` in the off-diagonal then, we can use the following command :

```matlab
flipud(eye(4))
```
> Note :
    The `flipud()` function flips the matrix upside-down.

##### `rand()`:
Create a `(3 x 3)` square matrix of randomly generated numbers :
```matlab
rand(3)
```
Similarly, we can create a `(3 x 2)` matrix of randomly generated numbers as follows :
```matlab
rand(3,2)
```
> Note :
    The `rand()` function generates positive decimal numbers between `0` to `1` and we can perform various arithmetic operations to get bigger numbers out of it.

Create a `(4 x 3)` matrix with randomly generated numbers between greater than `1`
```matlab
1000 * rand(4,3)
```
##### `randn()`:
The function `randn()` is very much similar to the function `rand()`, but, it generates gaussian distributed numbers.

So, to create a `R5` vector (column matrix) of gaussian distributed numbers :
```matlab
randn(5,1)
```

##### `magic ()`:
The function `magic ()` generates a sqare matrix such that, the summation of all the elements of each row, each column and each diagonal is same.

A magic matrix needs can be of atleast `(3 x 3)` dimension.

To create a magic matrix of `(5 x 5)` :
```matlab
magic (5)
```
##### `hilb ()`:
The `hilb ()` is used to create a Hilbert's matrix.
 A Hilbert's matrix is a square matrix with elements as `1/(i+j-1)`
 where,
 `i` : Row Number
 `j` : Column Number

 To create a Hilbert's matrix of `(4 x 4)` order :
 ```matlab
 hilb (4)
 ```
 ##### `diag ()`:
The function `diag()` can be used to create a diagonal matrix of certain elements by using a vector, as follows :

First we need to create a vector of elements to be taken as diagonal element :
```matlab
vec = [53;65;43;45]
```
Now, we can use the `diag()` function as follows :
```matlab
diag(vec)
```
Now, if we want the vector elements in the off-diagonal, then, we can simply use the `flipud()` function along with `diag()`, as follows :

```matlab
flipud(diag(vec))
```
`diag()` can also be used to extract the diagonal & off-diagonal elements of a matrix as follows :
```matlab
% Create a (5 x 5) matrix :
mat = rand(5)

% Extract the diagonal elements :
diag(mat)

% Extract off-diagonal elements :
diag( flipud(mat) )
```
## Advance Matrix Creation
---
Otherthan using matrix building functions or, typing out numbers manually; we can actually create matrix from other pre-existing metrices or, by combining arrays/vectors.

But, while performing such advance matrix creating methods, we have to give a special attention towards the dimension of the matrices that we are taking into account otherwise, we may end-up in getting an error message.

Now, let's create a matrix using a vector and an identity matrix
```matlab
% Creating a vector
v = [20; 40; 50; 70]

% Creating an identity matrix
I = eye(4)

% Adding `v` as a column to `I` to create a (4 x 5) matrix
P = [v,I]
```
Now, let's create an array and then use it with the previously created identity matrix `I` to create another matrix

```matlab
% Creating an array :
array = [1,2,3,4]

% Appending `array` over the identity matrix `I` to form a (5 x 4) matrix
Q = [array; I]
```
## Subsetting of Matrix
---
Let's create a `(6 x 4)` matrix for performing various subsetting operation :
```matlab
matrx = [
24,52,66,85,15,79;
44,57,53,40,47,72;
38,66,69,86,25,82;
36,73,76,72,28,91]
```
To extract only the 1st row :
```matlab
matrx(1,:)
```
To extract only the 3rd column :
```matlab
matrx(:,3)
```
To extract a square matrix using last two rows and 1st two columns :
```matlab
matrx(3:4,1:2)
```
To extract a square matrix using the 2nd & 4th row with 4th & 6th column :
```matlab
matrx([2,4],[4,6])
```
To extract the element preset at 3rd row and 6th column :
```matlab
matrx(3,6)
```

## Scalar Operation on Matrices
---
All the mathematical operations that we have performed with individual numbers/variables can also be applied to matrices.

So, if we have `(4 x 4)` matrix and we enclose it within a `log()` function then, in the resultant matrix, we will get logarithm of each element.

Let's perform the scalar operations upon the previously created `(4 x 6)`matrix `matrx` :
#### Arithmetic Operations :

```matlab
Scalar_add = 2.5 + matrx
Scalar_subs = 2.5 - matrx
Scalar_mult = 5 * matrx
Scalar_div = matrx / 3.5
Scalar_rem = rem (matrx,25)
Scalar_pow = power(matrx,3)

% For Non-square matrix
Scalar_pow2 = matrx .^ 3

% For sqare matrix
Scalar_pow3 = matrx(:,1:4) ^ 3

Scalar_sqrt = sqrt (matrx)
```
#### Logarithimic Operations

```matlab
Scalar_log = log (matrx)
Scalar_exp = exp (matrx)
```
#### Trigonometric Operations

```matlab
Scalar_sine = sin(matrx)
Scalar_cosine = cos(matrx)
Scalar_tangent = tan(matrx)

% Inverse Trigonometric Operations
Scalar_invsin = asin(matrx)
Scalar_invcos = acos(matrx)
Scalar_invtan = atan(matrx)
````
#### Rounding-off Operations

If we have a matrix with decimal values as elements then, we can perform the rounding-off operations over each element.

Let's create a random `(5 x 5)` decimal matrix to perform the rounding-off operations
```matlab
randmat = rand(5)
```
Now, let's apply the rounding-off operations over the created matrix :

```matlab
rounding = round (randmat)
ceiling = ceil (randmat)
flooring = floor (randmat)
```

## Matrix Operations
---
Now, let's see how we can perform various matrix operation with other matrices. The various matrix operations are :

1. Size of a Matrix
2. Length of a Matrix
3. Reshaping of a Matrix
3. Statistical Operations on a Matrix
4. Arithmetic Operations on a Matrix
5. Logarithimic Operations on a Matrix
6. Exponential Operations on a Matrix
7. Determinant of a Matrix
8. Transpose of a Matrix
9. Inverse of a Matrix
10. Eigen Values & Eigen Vectors of a Matrix
11. Matrix Addition, Subtraction & Multiplication
12. Elementwise Matrix Multiplication & Division

Now, let's create two `(4 x 4)` sqare matrix from the previously created `(4 x 6)` matrix to perform the above operations.

```matlab
sqmat1 = matrx (:,1:4)
sqmat2 = matrx (:,3:6)
```

#### Size of a Matrix :

To get the size of the matrix :
```matlab
size(matrx)
```
To get the number of rows in a matrix
```matlab
size(matrx,1)
```
To get the number of columns in matrix
```matlab
size(matrx,2)
```
#### Length of a Matrix

The `length()` function gives the maximum dimension of the matrix as its output. So, for a `(4 x 6)` matrix, it executes the number of columns as output and for a `(6 x 4)` matrix, it executes the number of rows as output.
```matlab
length(matrx)
```

> Note :
    The `length()` function returns the dimension of a vector and for an array, it returns the number of elements present in it.

#### Reshaping of a Matrix
Reshaping of a matrix refers to the manipulation of rows and column of matrix to give it some desired shape.

So, we can reshape our `(6 x 4)` matrix named `matrx` into a `(4 x 6)` matrix as follows :
```matlab
reshape(matrx,6,4)
```
> Note:
    The above reshape operation don't transpose the the matix rather it just stacks the matrix elements to provide the desired dimension

Similarly, we can make a column matrix (vector) from the `(4 x 6)` matrix as follows :
```matlab
reshape(matrx,24,1)
% or,
reshape(matrx,4*6,1)
```
To make a row-matrix (array) from the `(4 x 6)` matrix :
```matlab
reshape(matrx,1,24)
% or,
reshape(matrx,1,4*6)
```
#### Statistical Operations on a Matrix
The basic statistical operations that we can perform on a matrix are :
* Finding minimum and maximum values
* Finding mean, variance and standard deviation

To find out minimum/maximum/mean/standard deviation/variance column-wise :
```matlab
% Minimum
min (matrx)

% Maximum
max (matrx)

% Mean
mean (matrx)

% Standard Deviation (normalize with N-1)
std (matrx)

% Variance (normalize with N-1)
var (matrx)
````
or, we can use the below formula as well for finding minimum/maximum/mean/standard deviation/variance column-wise :

```matlab
% Minimum
min (matrx,[],1)

% Maximum
max (matrx,[],1)

% Mean
mean (matrx,1)

% Standard Deviation (normalize with N)
std (matrx,1)

% Standard Deviation (normalize with N-1)
std (matrx,0,1)

% Variance (normalize with N)
var (matrx,1)

% Variance (normalize with N-1)
var (matrx,0,1)
````
To find out minimum/maximum/mean/standard deviation/variance row-wise :

```matlab
% Minimum
min (matrx,[],2)

% Maximum
max (matrx,[],2)

% Mean
mean (matrx,2)

% Standard Deviation (normalize with N-1)
std (matrx,0,2)

% Standard Deviation (normalize with N)
std (matrx,1,2)

% Variance (normalize with N-1)
var (matrx,0,2)

% Variance (normalize with N)
var (matrx,1,2)
````
To find out minimum/maximum/mean/standard deviation/variance of diagonal elements:

```matlab
% Minimum
min (diag ( matrx ) )

% Maximum
max (diag ( matrx ) )

% Mean
mean (diag ( matrx ) )

% Standard Deviation (normalize with N-1)
std (diag ( matrx ) )

% Standard Deviation (normalize with N)
std (diag ( matrx ),1 )

% Variance (normalize with N-1)
var (diag ( matrx ) )

% Variance (normalize with N)
var (diag ( matrx ),1 )
````
To find out minimum/maximum/mean/standard deviation/variance of off-diagonal elements:
```matlab
% Minimum
min (diag ( flipud ( matrx ) ) )

% Maximum
max (diag ( flipud ( matrx ) ) )

% Mean
mean (diag ( flipud ( matrx ) ) )

% Standard Deviation (normalize with N-1)
std (diag ( flipud ( matrx ) ) )

% Standard Deviation (normalize with N)
std (diag ( flipud ( matrx ) ) ,1 )

% Variance (normalize with N-1)
var (diag ( flipud ( matrx ) ) )

% Variance (normalize with N)
var (diag ( flipud ( matrx ) ) ,1 )
````
To find out minimum/maximum/mean/standard deviation/variance of all the elements in a matrix :

```matlab
% Minimum
min (reshape (matrx, size(matrx,1) * size(matrx,2),1))

% Maximum
max (reshape (matrx, size(matrx,1) * size(matrx,2),1))

% Mean
mean (reshape (matrx, size(matrx,1) * size(matrx,2),1))

% Standard Deviation (normalize with N-1)
std (reshape (matrx, size(matrx,1) * size(matrx,2),1))

% Variance (normalize with N-1)
var (reshape (matrx, size(matrx,1) * size(matrx,2),1))
````
#### Arithmetic Operations on a Matrix
The basic arithmetical operations that we can perform on a matrix are :

* Finding sum and product of rows and columns
* Finding cumulative sum and product of rows and columns

To find out sum/product/cumulative sum/cumulative product column-wise :
```matlab
% Column totals
sum (matrx)
% or,
sum (matrx, 1)

% Product of column elements
prod (matrx)
% or,
prod (matrx,1)

% Cumulative Sum (Column-wise)
cumsum (matrx)
% or,
cumsum(matrx,1)

% Cumulative Product (Column-wise)
cumprod (matrx)
% or,
cumprod (matrx,1)
```
To find out sum/product/cumulative sum/cumulative product row-wise :
```matlab
% Row totals
sum (matrx, 2)

% Product of row elements
prod (matrx,2)

% Cumulative Sum (Row-wise)
cumsum(matrx,2)

% Cumulative Product (Row-wise)
cumprod (matrx, 2)
```

To find out the sum/product/cumulative sum/cumulative product of all the diagonal elements :
```matlab
% Diagonal totals
sum ( diag( matrx ) )

% Product of diagonal elements
prod ( diag( matrx ) )

% Cumulative Sum (Principal diagonal)
cumsum ( diag( matrx ) )

% Cumulative Product (Principal diagonal)
cumprod ( diag( matrx ) )
```
To find out the sum/product/cumulative sum/cumulative product of all the off-diagonal elements :
```matlab
% Off-Diagonal totals
sum ( diag( flipud(matrx) ) )

% Product of off-diagonal elements
prod ( diag( flipud(matrx) ) )

% Cumulative Sum (Off diagonal)
cumsum ( diag( flipud(matrx) ) )

% Cumulative Product (Off diagonal)
cumprod ( diag( flipud(matrx) ) )
```
To find out the sum/product/cumulative sum/cumulative product of all the of all elements :

```matlab
% Sum of all the elements
sum( sum( matrx ) )
% or,
sum (reshape ( matrx, size(matrx,1) * size(matrx,2),1) )

% Product of all the elements
prod( prod( matrx ) )
% or,
prod (reshape ( matrx, size(matrx,1) * size(matrx,2),1) )

% Cumulative sum of all the elements when matrix reshaped as a vector
cumsum (reshape ( matrx, size(matrx,1) * size(matrx,2),1))

% Cumulative product of all the elements when matrix reshaped as a vector
cumprod (reshape ( matrx, size(matrx,1) * size(matrx,2),1))
```

#### Logarithimic Operations on a Matrix
The logarithimic operations that can be performed upon a matrix are :
* `logm()` : To find pricipal logarithm matrix
* `expm()` : This returns `e` raised to the power of each element or,  `x ^ e`

We need square matrix to perform the logarithmic operations, as follows :
```matlab
% Principal logarithm matrix
logm(sqmat1)

% To e-power of element
expm(sqmat2)
```
#### Exponential Operations on a Matrix

The exponential operations that can be performed upon a matrix are :
* `mpower()` : Its just an alternate way to execute `A^B`,but, it enables operator overloading for classes.
* `sqrtm()` : This returns the principal square root of the matrix `A`, i.e. `X*X = A`.
We need square matrix to perform the such exponential operations, as follows :
```matlab
% Power of matrix
mpower(sqmat1,2)

% Principal square root of matrix
sqrtm( sqmat1)
```
#### Determinant of a Matrix
To get the determinant of a matrix, we use the `det()` :
```matlab
det(sqmat1)
```
#### Transpose of a Matrix
To get the transpose of a matrix :
```matlab
matrx'
```
#### Inverse of a Matrix
The general function to get the inverse of a matrix is `inv()` but, this doesn't work if the matrix is non-invertible/singular.

Therefore, we use `pinv()` function always, to get the inverse of the matrix even if its a singular matrix, i.e., the determinant of the matrix is zero.
```matlab
General_inverse = inv(sqmat1)
Global_inverse = pinv(sqmat1)
```
#### Eigen Values & Eigen Vectors of a Matrix
To get the eigen values and eigen vectors of a matrix, we use the `eig()` as follows :
```matlab
eig (sqmat1)
```
#### Matrix Addition, Subtraction & Multiplication
To add two matrices :
```matlab
mat_add = sqmat1 + sqmat2
```
To subtract two matrices :
```matlab
mat_subst = sqmat1 - sqmat2
```
To perform matrix multiplication :
```matlab
mat_mult = sqmat1 * sqmat2
```
#### Elementwise Matrix Multiplication & Division
To perform element wise matrix multiplication :
```matlab
mat_ele_mult = sqmat1 .* sqmat2
```
To perform element wise matrix division :
```matlab
mat_ele_div = sqmat1 ./ sqmat2
```
