

% true ralative error vs number of terms  
close all
clear all
clc

x = [1 2 3 4 5 6];
y = [41.421356 4.397332 0.449102 0.026171 0.001510 0.000061];

plot (x,y,'r*');
xlabel('Number of term');
ylabel ('True relative error');
title('"True relative error" Vs " No of terms talen"');
grid on
