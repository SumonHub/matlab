% Taylor Series
close all
clear all
clc

% TE = true error
% RE = relative error
% R1 = number of trem of taylor serise ++
% T1 = True Value

% true value of cos(pi/3)
T1= cos (pi/3);
x= pi/4;
h= pi/12;

% vlaue of cos and its derivative

f=cos(x);
f1= -sin(x);
f2=-cos(x);
f3= sin(x);
f4= cos(x);
f5= -sin(x);

% TE = true error , RE = relative error , 
% R1 =  number of trem of taylor serise ++

fprintf('True value of cos(pi/3) = % f''\n\n' , T1);


% all value of cos(pi/3) by increasing ++

R1 = f;
R2 = R1 + f1*h;
R3 = R2 + (f2*h^2)/factorial(2);
R4 = R3 + (f3*h^3)/factorial(3);
R5 = R4 + (f4*h^4)/factorial(4);
R6 = R5 + (f5*h^5)/factorial(5);

% True error of all value

TE1 = T1-R1;
TE2 = T1-R2;
TE3 = T1-R3;
TE4 = T1-R4;
TE5 = T1-R5;
TE6 = T1-R6;

%  true ralative error

RE1 = abs(TE1*100/T1);
RE2 = abs(TE2*100/T1); 
RE3 = abs(TE3*100/T1); 
RE4 = abs(TE4*100/T1); 
RE5 = abs(TE5*100/T1); 
RE6 = abs(TE6*100/T1);


fprintf('value of cos(pi/3) by taking 1 tream = % f''\n' , R1);
fprintf('True Error 1 = % f''\n' , TE1);
fprintf('Relative Error 1 = % f''\n\n' , RE1);

fprintf('value of cos(pi/3) by taking 2 tream = % f''\n' , R2);
fprintf('True Error 2 = % f''\n' , TE2);
fprintf('Relative Error 2 = % f''\n\n' , RE2);


fprintf('value of cos(pi/3) by taking 3 tream = % f''\n' , R3);
fprintf('True Error 3 = % f''\n' , TE3);
fprintf('Relative Error 3 = % f''\n\n' , RE3);


fprintf('value of cos(pi/3) by taking 4 tream = % f''\n' , R4);
fprintf('True Error 4 = % f''\n' , TE4);
fprintf('Relative Error 4 = % f''\n\n' , RE5);


fprintf('value of cos(pi/3) by taking 5 tream = % f''\n' , R5);
fprintf('True Error 5 = % f''\n' , TE5);
fprintf('Relative Error 5 = % f''\n\n' , RE5);


fprintf('value of cos(pi/3) by taking 6 tream = % f''\n' , R6);
fprintf('True Error 6 = % f''\n' , TE6);
fprintf('Relative Error 6 = % f''\n' , RE6);