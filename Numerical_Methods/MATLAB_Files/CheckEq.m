%--------- Matrix Solution Type Checking Function ---------------------
% =======================================================================

%{
  This function returns the solution type of simultaneous linear equations and 
  also the solutions (for unique solution types)
%}

% =======================================================================

function Check = CheckEq (A, B)
  # Find the number of columns in matrix "A"
  columnsA = size(A,2);

  # Find the rank of matrix "A"
  rankA = rank(A);

  # Find the combined rank of matrix "A" and "B"
  combinedRank = rank([A,B]);

  #Let's check "A" for full-rank

  if (columnsA == rankA)
    fprintf("The equations have a unique solution\n");
  else
    fprintf("The equations don't have a unique solution\n");
  end

  if (columnsA == rankA)
    #To get the solution of the linear equation :

    x = inv(A) * B;

    %Printing the results
    for i = 1:columnsA
      fprintf("\n The value of x(%i) is %i\n",i,x(i));
    end
  else 
    if (rankA == combinedRank)
      fprintf("The equations have infinite solutions\n");
    else
      fprintf("The equations have zero solution\n");
    end
  end
endfunction
