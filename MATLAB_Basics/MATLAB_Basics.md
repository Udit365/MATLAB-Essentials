# Basics
---
##### Defining Variables :
The following code assigns a value of `5` to the variable `a` and `6` to the variable `A`.
```matlab
a = 5
A = 6
```
To define multiple variables at once, we can use the comma (`,`) separator :
```matlab
a1 = 2, a2 = 4, a3 = 5
```
> Note :
    *MATLAB variables are case-sensitive.*

##### Creating Array :
A one-dimensional row matrix is otherwise called as an array and the following code generatres an array of integers from `1` to `5`.
```matlab
b = [1:5]
```

##### Creating List :
The following code generates a list of numbers from `1` to `25` :
```matlab
list = 1:25
```
The following code generates a list from `10` to `100` with a gap of `10` between two consecutive numbers :
```matlab
list2 = 10:10:100
```
Similarly, the below code generates a list from `10` to `100` in reverse order with a gap of `20` :
```matlab
list3 = 100:20:10
```
We can also generate the list of decimal numbers in the same manner as well.
For example, the following code generates a list from `1` to `2` with a gap of `0.01`:
```matlab
list4 = 1:0.01:2
```

##### Creating Matrix :
The following code generate a `(3x3)` matrix :
```matlab
M = [1,2,3; 4,5,6; 7,8,9]
```

##### Creating Vector :
A vector is nothing but a column matrix, i.e., it has only one column and its dimension is determined by the number of rows it has.

So, the following code generates a vector of `4-dimension (R4)`,i.e., a column matrix with four rows :
```matlab
vec = [1; 2; 3; 4]
```
##### Supressing "Echo" :
In MATLAB command window, as soon as we hit enter after writing some codes or, after defining some variables then, its get executed immediately.
If we don't want this to be happen then, we can just put a `semi-colon (;)` at the end of our code, as follows :
```matlab
var1 = 5;
var2 = 7;
var1 + var7
```
Now, in the above code, only the addition of two defined variables will be executed in the command window.

> Note :
    By putting `;` at the end of the code only restricts it from execution but, the variable gets defined as usual.
    
##### Displaying Results :
If we want to display a string then, we can do so by using `disp()` command :
```matlab
disp("Hello World")
```
We can use this `disp()` to beautifully execute the programming outputs, as follows :
```matlab
disp( ["The number is : ", num2str(factVal)] )
```
The `num2str()` function converts the number format (integer/float/double etc.) into string.

Similarly, we have a much advanced way of executing the same result, i.e., by using `fprintf()`, as follows :
```matlab
fprintf("factorial value is : %4i \n", factVal)
```
In the above code, 
- `%` is used as a pointer that points to the second argumnet of `fprintf()`, i.e., `factVal`.
- `4i` we restrict the output upto 4 integers.
- `\n` represents a new line

##### Comment Lines :
Comments are helpful in better understanding of codes and in MATLAB, anything written after a `percentage (%)` symbol is considered as a comment.
```matlab
% This is a comment
% Comment lines are ingoned by MATLAB compiler.
```
Similarly, If we want to write multi-line comments or, a block of comments then, we can do so, as follows :
```matlab
%{
    This is a multi-line comment block.
    We can write questions, queries and other things here.
    1. We can give bullet points too.
    2. All of these will be ignored by the compiler.
%}
```

##### Monitoring Variables
To see all the variables created so far, we need to pass the `who` command and 
```matlab
who
```
To see the datatype and other related information along with the datatypes, we need to pass the `whos` command :
```matlab
whos
```
##### Clearing Command Window :
The command window easily get messy after writing a couple of codes and in order to clear the screen, we just need to pass the command `clc`.
```matlab
clc
```
> Note :
    `clc` command don't remove any variables and just clears the command window for smoother user experience.
    
##### Clearing Variables :
Let's first create some variables for the operation :
```matlab
varb1 = 2;
varb2 = 5;
varb3 = 6;
varb4 = 20;
varb5 = 10;
```
To clear any specific variable, we need to pass the following command :
```matlab
clear varb1
```
To clear multiple variables at once, we need to follow the below steps :
1. Create an array of variables that needs to be removed, as follows :
```matlab
vars = {"varb2","varb3"}
```
2. Pass the following command to remove the variables :
```matlab
clear(vars{:})
```
3. Remove the array :
```matlab
clear vars
```
Similarly, if we want to clear all the variables at once, then we just need to pass the command `clear` :
```matlab
clear
```
##### Importing Data Into MATLAB

To load any .txt/.csv/.dat file into matlab, we first need to change the directory (if the datafile is in some other directory) by using the `cd` command in the command window, as follows :
```matlab
cd 'C:\Users\Udit\Desktop\Desktop Folders\Octave\Dataset'
```
>Note :
    Here the directory address must be written withing single quotes (`''`) only.

Then, we can pass the `load` command followed by the file name to import it, as follows :
```matlab
load SampleData.txt
```
Now, to view the dataset, we can just pass the dataset name, as follows :
```matlab
SampleData
```
##### Exporting Data From MATLAB
Suppose, we made some changes to the dataset and then, we want to save the transformed/changed data in a *.txt* file.

To do this we have to pass the `save` command followed by the filename for the new dataset and the dataset variable as follows :
```matlab
NewData = SampleData(1:10,:)
save TransformedData.txt NewData -ascii
```
Simlarly, to save our data in a *.mat* file :
```matlab
save TransformedData.mat NewData
```
##### Getting Help in MATLAB

It is very obvious to forget the syntax and use of certain commands and sometimes we might need a quick reference to a certain function.

This need can be fulfilled with the `help` command in MATLAB.

So, suppose we need a quick referce on the `disp` command, so we can just write `help` followed by the required search object in the command window, as follows :

````matlab
help disp
```
##### Exiting The Interface
---
To quit the MATLAB session, we can just pass `exit` or, `quit` command on the command prompt.









