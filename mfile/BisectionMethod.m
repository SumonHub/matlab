
close all
clear all
clc

xl = input('enter the value of xl = ');
xu = input('enter the value of xu = ');
es = input('enter the value of Es = ');
noOfItr = input('enter no of itr = ');

f = @(x) ((667.38/x)*(1-exp(-.146843*x)))-40;

if(f(xl)*f(xu))>=0
    xl = input('enter the value of xl = ');
    xu = input('enter the value of xu = ');
end

for i=1:noOfItr
    xm=(xl+xu)/2;
    xold=xm;
    if(f(xl)*f(xm)>0)
        xl=xm;
         xm = (xl+xu)/2;
    else 
        if(f(xl)*f(xm)<0)
        xu=xm;
        xm = (xl+xu)/2;
        else
            break;
        end
    end
    
    ea = abs(((xm-xold).*100)/xm); 
    if(es>=ea)
        break;
    end
    
end

fprintf('The root of the equation is = %f''\n',xm);
fprintf('Number of the iteration is = %f''\n',i);
fprintf('Approximate error is = %f''\n',ea);


