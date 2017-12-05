%SumOn
%2013-2-50-003

close all
clear all
clc

x0 = 0.1;
es = 0.0001;
x=x0;
xold=x0;

for i = 1:50
   
    f = cos(x)-x^2+20;
    df = -sin(x)-2*x;
    x = x-(f/df);
    ea = abs((x-xold)*100/x);
    
    if(i==1 || i==3 || i==5 || i==7 || i==9)
        fprintf('Value of error = %f \n\n',ea);
        
    end
    
    if(es>=ea)
        break;
    else
        xold=x;
    end
    
end

fprintf('Root of the function using Newton-Raphson method=% f''\n\n',x);
fprintf('Number of iteration= %f''\n\n',i);
fprintf('Approximate error= %f''\n\n',ea);


