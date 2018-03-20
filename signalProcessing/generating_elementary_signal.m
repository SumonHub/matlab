%%lab-2
% generating elementary signal

% genareting sine function using sin wave in matlab

% Sinusoidal Wave - 28
% Exponential/Damped wave - 36
% Discrete exponential sample wave - 44
% Exponential/Damped wave - 52
% Exponential/Damped wave - 64
%%
clear all
close all
clc;

% t=-pi:0.01:2*pi;
% f=1;
% w=2*pi*f;

%% User Define Input
%t=input('Enter the value of Time:');
%f=input('Enter the value of Frequency:');

t = -pi:0.01:2*pi;
f = 1;
w=2*pi*f;

%% Sinusoidal Wave
y=sin(w*t);
plot(t,y);
xlabel('time');
ylabel('Amplitude');
title('Sinusoidal Wave');
grid on

%% Exponential/Damped wave

y=exp(-0.09*t).*sin(w*t+3);
plot(t,y);
xlabel('time');
ylabel('Amplitude');
title('Exponential/Damped wave');

%% Discrete exponential sample wave
t=0:.1:1;
y=exp(-0.4*t);
stem(t,y);
xlabel('time');
ylabel('Amplitude');
title('Discrete exponential sample wave');

%% Two Exponential Curves
% t=0:.1:3;
% f=100;
% w=2*pi*f;
y1=exp(-0.4*t);
y2=exp(0.4*t);
plot(t,y1,'rd',t,y2,'g>');
xlabel('time');
ylabel('Amplitude');
title('Exponential Curve');
grid on

%% Negative Exponential Positive Exponential

y1=exp(-0.9*t);
y2=exp(0.9*t);
plot(t,y1,'kd',t,y2,'k>');
xlabel('time');
ylabel('Amplitude');
title('Exponential Curve');
grid on
legend('Negative exp','Positive Exp');




