clc;
%A = input("Enter co-efficient matrix: ");
%b = input("Enter source vector: "); %% no of unknown
A = [10 3 1; 3 10 2; 1 2 10];

b =  [19;29;35];

N  = length(b);
X = zeros(N,1);

Aug = [A b];  %% Augmented Matrix

tic
for j=1:N % for column
    Aug(j, :) = Aug(j, :) / Aug(j,j);
    for i = 1:N %%for rows
        if i~=j
            m = Aug(i,j);
            Aug(i, :) = Aug(i, :) - m* Aug(j, :);
        end
    end
end
toc
X = Aug(:, end);


%%rref(Aug) %%buliton matlab command
