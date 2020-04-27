%--------- LU Decomposition Method ---------
% =======================================================================

% Closing and Clearing Screen
% -----------------------------
close all; clear all; clc;

% Initialization
% ------------------------------

A = [1,1,1; 2,1,3; 3,4,-2];
B = [4;7;9];

% Naive Gauss-Elimination Method
% --------------------------------

Aaug = [A,B]; %Creating the 'Aaug' Matrix
n = length(A);
L = eye(n);

% With A(1,1) as pivot element :

for i = 2:3
  alpha = Aaug(i,1)/Aaug(1,1);
  L(i,1) = alpha;
  Aaug(i,:) = Aaug(i,:)- alpha * Aaug(1,:);
end 

% With A(2,2) as pivot element :

alpha = Aaug(3,2)/Aaug(2,2);
L(3,2) = alpha;
Aaug(3,:) = Aaug(3,:)- alpha * Aaug(2,:);

U = Aaug(1:n,1:n);

% Value of A after LU decomposition
A = L*U

%--------------------------- END OF SCRIPT -------------------------------%