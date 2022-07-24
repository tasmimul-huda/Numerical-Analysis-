 n=3;
 A = zeros(n,n+1);
 x1 = zeros(n);
 
 tol = .00000001;
 m =100;
 
 A=[2 1 1 5; 3 5 2 15; 2 1 4 8];
 x1=[0 0 0];

 k = 1;
 while  k <= m
    err = 0;
    
    for i = 1 : n
       s = 0;
       for j = 1 : n
          s = s-A(i,j)*x1(j);
       end
       s = (s+A(i,n+1))/A(i,i);
       if abs(s) > err
                    err  = abs(s);
       end
       x1(i) = x1(i) + s;
    end

    if err <= tol
      break;
    else
      k = k+1;
    end
 end
 
 fprintf('Solution after %d iterations is :\n', k-1);
 for i = 1 : n
   fprintf(' %11.8f \n', x1(i));
 end