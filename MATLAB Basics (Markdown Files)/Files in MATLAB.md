# MATLAB Files
---

MATLAB files are saved with a `.m` extension and can be edited with any text editor.

To open the MATLAB editor, we need to pass the follwing command in the command window -:
```matlab
edit FileName
```
The above command will create a MATLAB file with name as *"FileName"* which can be saved once we finish working with an extension of `.m`.

MATLAB editor helps us in writing multiline codes that can be executed as a block later.

## Types of MATLAB Files
---
MATLAB files are of two types :
1. Script Files
2. Function Files

Although both files are saved with the same `.m` extension but, have different properties at execution.

## Difference between script files and function files
---

| Script Files | Function Files |
| ------ | ------ |
| Files containing sequence of MATLAB commands.| Files content starts with an argument of `function()` that takes certain input(s), execute a sequence of steps and then returns output(s) |
|MATLAB statements are executed as if they are types on the command prompt one after another | MATLAB statements are executed in function's own variable space,i.e, if a variable is defined in the function file then it can't be used anywhere outside the function.|
|Script files shares the variable with workspace (MATLAB workspace) from where it is called|A function has its own workspace and thus, variables used in a function have local scope.|
|Don't have any such input or, output variable and all the variables used in the script file can also be used for other purposes in the command window, once the script file get executed| Both input and output variables are optional in a function file, however, in general, a function always have some input or, output.|
|We can save the script file with any suitable name| It is advised and also considered a best practice to save a function file with the name of the defined function.|
|Script files don't have any such strict format.|Functions talk through `input` and `output` variables and the typical format followed in a function files is : `function [out1,out2,...] = funcName(in1, in2,..)`|

## When to use script files ?
---
We use script files when we want to :
Make small calculations,viz, factorial calculation, basic computation and plotting etc.

##### Example :
*Write a MATLAB script that calculates factorial.*
![factorial](https://latex.codecogs.com/gif.latex?%5C%20n%21%20%3D%201%5Ctimes2%5Ctimes3%5Ctimes....%5Ctimes%20n)
***Solution :***
First create a script file by passing following command :
```matlab
edit FactorialCalculation
```
Then write program to calculate factorial for a given `n`, as follows and save it :

```matlab
% Define n
n = 6;

% Create an array from 1 to n
factvec = [1:n];

% Get product of all the array elements to calculate factorial
n_factorial = prod(factvec)
```
To run the script file in command window, pass the file name as follows :
```matlab
FactorialCalculation
```

## When to use function  files ?
---
We use function files when we want to :
1. Calculating some variable (say `r`) which is a function of some other variable (say, `x` and `y`), i.e., *`r = f(x,y)`*.
2. To solve differential equations and integration problems.
3. Calculating some material properties which is a function of temperature, concentration, current etc.

##### Example :
*Write a function to calculate :*
![polynomial_equation](https://latex.codecogs.com/gif.latex?%5C%20f%20%3D%20C_%7B0%7D&plus;C_%7B1%7Dx&plus;C_%7B2%7Dx%5E2&plus;...&plus;C_%7Bn%7Dx%5En)
> Note :
    Such polynomial functions are commonly used to calculate the physical properties of fluids and for the above equation, consider :
    ![Variables](https://latex.codecogs.com/gif.latex?%5C%20C_%7B0%7D%20%3D%201%2C%20C_%7Bm%7D%20%3D%201/m)

***Solution :***
First create a function file by passing following command :
```matlab
edit PolyFunc
```
Then write the function as follows and save it :
```matlab
% For the polynomial function we need 1 output variable and 2 input variable :

function result = PolyFunc (n,x)
  
  Co = 1;
  vec = [1:n]; 
  
  C = [Co, 1 ./ vec]; % element-wise division for C-terms
  
  x = [1, x .^ vec]; % element-wise exponent for X-terms
  
 series = C .* x; % Generating the polynomial series
 
 result = sum (series); % Adding up the series elements
  
end
```
To run the function file in command window, pass the file name as follows :
```matlab
PolyFunc( 6, 0.1 )
```
Although we can write all the codes and functions in the command window itself but, its better to create files and write codes in them, especially when we are using any function or, writing some long coding script.
