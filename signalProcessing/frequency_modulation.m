% Frequency modulation

% genarate FM wave for
% info signal of 10Hz
% carrier signal of 30Hz

clear all
close all
clc;

vc = 1;
vm = 1;
fm = 250;
fc = 5000;
m = 10;
t = 0: 0.00001: 0.09999;
f = 0: 10:99990;
wc = 2*pi*fc;
wm = 2*pi*fm;
sc_t = vc*cos(wc*t);
sm_t = vm*cos(wm*t);
kf = 1000;
s_fm = vc*cos((wc*t)+10*sin(wm*t));
vf = abs(fft(s_fm,10^4))/5000;
figure;

plot (t,s_fm);
hold on;
plot (t,sm_t,'r' );
axis([0 0.01 -1.5 1.5]);
xlabel('time(second)');
ylabel('Amplitude)');
title('Fm time domain');
grid on;

figure;
plot(f,vf);

axis([0 10^4 0 0.4]);
xlabel('frequency');
ylabel('Amplitude)');
title('Fm frequency domain');
grid on;


figure;
plot(t,sm_t);
axis([0 0.01 -1.5 1.5]);
title('Fm modulating signal');
