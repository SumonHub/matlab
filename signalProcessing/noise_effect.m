
% Noise effect in wireless communication
% show ASK/BPSK/QPSK using matlab


close all
clear all
clc;

fs = 8e5; % smapling frequency
fm = 20e3; % squere wave modulating frequwncy (NRZ) = 40Khz bit rate
n = 2*(6*fs/fm);
final = (1/fs)*(n-1);
fc = 2e5; % carrier frequency
t = 0:1/fs:final;
Fn = fs/2; % nyquist frequency

%=====================================
% Genarating square wave by using cosine wave
%======================================

% cosine wave 
% 2 pi fc t is written below

twopi_fc_t = 2*pi*fc*t;
A = 1;
phi = 0;
x = A*cos(twopi_fc_t+phi);

%square wave

am=1;
x(x>0) = am;

%=================================
% use for ASk- comment out BPSK
x(x<0) = 0; 

%=================================

%=================================
% use for BPSK - remember ASK variables become BPSK

%x(x<0) = -1; 

%=================================

%=================================
% use for QPSK

% x(phi==45)= 1.414;
% x(phi==-45)= 1.712;
% x(phi==135)= 1.712;
% x(phi==-135)= 1.414;

%=================================

subplot(321);
plot(t,x);
axis([1e-4 3e-4 -2 2]);
title ('Square Wave Modulation Input To Transmitter');
grid on;

car = sin(2*pi*fc*t); % Sinewave carrier waveform
ask = x.*car; % modualtion carrier (ASk or BPSK) 
subplot(322);
plot(t,ask);
axis([0 100e-6 -2 2]);
title ('Modulation sin wave carrier waveform');
grid on;

%=================================
% Noise genarator SNR= Eb/No=20log(Signalrms/Noiserms)
%=================================

% vn = 0;
vn = 1; % set noise lavel 0.1= 6bd = E$b/No
noise = vn*(randn(size(t))); % noise genarator
subplot(323);
plot (t, noise);
grid on;
title('Noise lavel');
axis([0 .6e-3 -1 1]);

askn = (ask+noise); % modulated carrier puls moise
subplot(324);
plot(t,askn);
axis([0 100e-6 -2 2]);
title('Modulated Carrier Waveform Pluse Noise');
grid on;



