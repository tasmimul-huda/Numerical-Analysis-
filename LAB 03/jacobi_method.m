clear all;
clc;
a=   [2     1     1;3     5     2;2     1     4];
b=[5;15;8];
n=length(b);
%a
%b
for i=1:n
    x0(i)=b(i)/a(i,i);
end

key=1;
iter = 1;
while(key==1)
    disp('iteration'); disp(iter);
    key=0;
    for i=1:n
    
    sum=b(i);    
    
    for j=1:n 
        if (j~=i)
        sum= sum- (a(i,j)*x0(j));
        end
    end
    x(i)=sum/a(i,i);
    
    if key==0
        if (abs((x(i)-x0(i))/x(i))>.00000001)
            key=1;
        end
    end
    x0(i)=x(i);
    end 
    iter = iter+1;
end
x


        


