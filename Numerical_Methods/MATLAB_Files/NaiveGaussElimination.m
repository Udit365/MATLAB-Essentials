%--------- Naive Gauss Elimination Method ---------
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

Aaug = [A,B]; %Getting the augmented matrix 

% With A(1,1) as pivot element :

for i = 2:3
  alpha = Aaug(i,1)/Aaug(1,1);
  Aaug(i,:) = Aaug(i,:)- alpha * Aaug(1,:);
end 

% With A(2,2) as pivot element :

alpha = Aaug(3,2)/Aaug(2,2);
Aaug(3,:) = Aaug(3,:)- alpha * Aaug(2,:);

% Back Substitution 
% ---------------------

X = zeros(3,1); % initializing X

for i = 3:-1:1
X(i) = ( Aaug(i,end)- ( Aaug(i,3)*X(3) + Aaug(i,2)*X(2)) ) / Aaug(i,i);
fprintf("\n The value of x(%i) is %i\n",i,X(i));
end


%--------------------------- END OF SCRIPT -------------------------------%




