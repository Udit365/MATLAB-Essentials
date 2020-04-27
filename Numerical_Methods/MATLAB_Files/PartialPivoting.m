%--------- Gauss Elimination Method With Partial Pivoting ---------------
% =======================================================================

% Closing and Clearing Screen
% -----------------------------
close all; clear all; clc;

% Initialization
% ------------------------------

A = [1,1,1; 2,1,3; 3,4,-2];
B = [4;7;9];
n = length(A);

Aaug = [A,B]; %Getting the augmented matrix

% With A(1,1) as pivot element :
%~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

% Performing Partial Pivoting
% --------------------------------

% Row exchange to ensure A(1,1) has the largest value in column-1

col1 = Aaug(:,1); %Storing the column-1
[dummy,idx] = max(col1); %Storing the row index for the largest value of column-1
dummy = Aaug(1,:); %Storing the 1st row values
Aaug(1,:) = Aaug(idx,:); %Now A(1,1) has the largest value in column-1
Aaug(idx,:) = dummy ; %Replacing the row (that has the largest value in col-1) with row-1

% Computing Gauss Elimination with partial pivoted augmented matrix
% -------------------------------------------------------------------

for i = 2:3
  alpha = Aaug(i,1)/Aaug(1,1);
  Aaug(i,:) = Aaug(i,:)- alpha * Aaug(1,:);
end 

% With A(2,2) as pivot element :
%~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

% Performing Partial Pivoting
% --------------------------------
% Row exchange to ensure A(2,2) has the largest value in column-2

col2 = Aaug(2:end,2); %Storing the column-2
[dummy,idx] = max(col2); %Storing the row index for the largest value of column-2
dummy = Aaug(2,:); %Storing the 2nd row values
Aaug(2,:) = Aaug(idx,:); %Now A(1,1) has the largest value in column-2
Aaug(idx,:) = dummy ; %Replacing the row (that has the largest value in col-2) with row-1


% Computing Gauss Elimination with partial pivoted augmented matrix
% -------------------------------------------------------------------
alpha = Aaug(3,2)/Aaug(2,2);
Aaug(3,:) = Aaug(3,:)- alpha * Aaug(2,:);


% Back Substitution 
% ~~~~~~~~~~~~~~~~~~~~~~~

X = zeros(3,1); % initializing X

for i = 3:-1:1
X(i) = ( Aaug(i,end)- ( Aaug(i,3)*X(3) + Aaug(i,2)*X(2)) ) / Aaug(i,i);
fprintf("\n The value of x(%i) is %i\n",i,X(i));
end

%--------------------------- END OF SCRIPT -------------------------------%