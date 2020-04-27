%--------- Solution for Linear Equations ---------
% =======================================================================

% Closing and Clearing Screen
% -----------------------------
close all; clear all; clc;


% Linear Equation with Unique Solution

fprintf("Linear Equation With Unique Solution\n-----------------------------------\n")

A = [1,2 ; 1,-1]
B = [1;4]

CheckEq(A,B)

% Linear Equation with Zero Solution

fprintf("\nLinear Equation With Zero Solution\n-----------------------------------\n")

A = [1,2 ; 2,4]
B = [1;4]

CheckEq(A,B)

% Linear Equation with Infinite Solution

fprintf("\nLinear Equation With Infinite Solution\n-----------------------------------\n")

A = [1,2 ; 2,4]
B = [1;2]

CheckEq(A,B)

%--------------------------- END OF SCRIPT -------------------------------%