
%SumOn
%2013-2-50-003

clear all
close all
clc

a = [ 1.4  -1.2 -2.1;
     -4.2  -2.5  3.7;
      2.6   3.1  1.7; ];
b = [ -2.3;
       2.9;
       7.8; ];
   
aug = [a,b];
% create augmented matrix

c = aug(2,1)/aug(1,1);
aug(2,:) = aug(2,:)-c*aug(1,:);

c = aug(3,1)/aug(1,1);
aug (3,:) = aug(3,:)-c*aug(2,:);
% eleminate x1

c = aug(3,2)/aug(2,2);
aug(3,:) = aug(3,:)- c*aug(2,:);
% eliminate x2

x3 = aug(3,4)/aug(3,3);
x2 = (aug(2,4)-x3*aug(2,3))/aug(2,2);
x1 = (aug(1,4)-x3*aug(1,3)-x2*aug(1,2))/aug(1,1);
% get value of x1 x2 x3
fprintf('Gauss Elimination \n');
fprintf('x1 = %f \n', x1 );
fprintf('x2 = %f \n', x2 );
fprintf('x3 = %f \n', x3 );
% print value of x1 x2 x3
syms x1 x2 x3;

ezsurf((-2.3-1.4*x1+1.2*x2)/(-2.1)),[10,-10]; hold on
ezsurf((2.9+4.2*x1+2.5*x2)/(3.7)),[10,-10]; hold on
ezsurf((7.8-2.6*x1+3.1*x2)/(1.7)),[10,-10];


