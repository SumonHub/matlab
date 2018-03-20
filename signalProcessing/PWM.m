% LAB 5
% pulse width modulation
 
% information frequency of 10Hz(fm) with 5v(vm) altitude and 
% carrier frequency of 30Hz(fc) with 10v(vc) aptitude 
% generate PWM result looks like


clear all;
close all;
clc;


t = 0:0.001:1;
fc = input ('Enter the frequency of carrier signal ( sawtooth ) = ');
a = input ('Enter the amplitude of carrier signal = ');
fm = input ('Enter the frequency of message signal ( sine ) = ');
b = input ('Enter the amplitude of information signal (should be < carrier) = ');
 
vc = a.*sawtooth(2*pi*fc*t);
vm = b.*sin(2*pi*fm*t);
 
n = length(vc);
for i= 1:n
    if(vm(i)>= vc(i))
        pwm(i) = 1;
    else
        pwm(i) = 0;
    end
 
end
 
subplot(3,1,1);
plot(t, vm);
xlabel ('Time _____');
ylabel ('Amplitude _____');
title (' Message Signal ');
grid on;
 
subplot(3,1,2);
plot(t, vc);
xlabel ('Time _____');
ylabel ('Amplitude _____');
title (' Carrier Signal ');
grid on;
 
subplot(3,1,3);
plot(t, pwm);
xlabel ('Time _____');
ylabel ('Amplitude _____');
title (' PWM Signal ');
axis ([0 1 0 2]);
grid on;


