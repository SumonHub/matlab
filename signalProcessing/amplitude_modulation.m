% amplitude modulation

% design and simulate Am wave using MATLAB for
% info signal of 10HZ with 5V amplitude
% carrier signal of 30Hz with 8V aplitude


% DSB-sc
% Matlab code:

clear all;
close all;
clc;

%%dsb-sc
t=0:0.001:1;
vd=8*cos(2*pi*5*t);
vc=0.1*cos(2*pi*15*t);
ft=vc.*vd;
am=ft+vc;
figure(1)
plot(t,vd);
figure(2)
plot(t,vc);
figure(3)
plot(t,am);
figure (4)
plot(t,ft);


%% DSB-fc
% Matelab code:

clear all;
close all;
clc;
%%user define
% t=input('enter the value of time period:');
% fm=input('enter the value of frequency:');
% vm=input('enter the value of amplitude:');
% fc=input('enter the value of frequency:');
% vc=input('enter the value of amplitude:');

t=0:0.0001:0.0999;
fm = 5;
fc = 100;
vm = 10;
vc = 30;

f=1:1:999;
wm=2*pi*fm;
wc=2*pi*fc;
V1=vc+vm*sin(wm*t);
V2=-(vc+vm*sin(wm*t));
Vm=vm*sin(wm*t);
Vc=vc*sin(wc*t);
Vam=(1+sin(wm*t)).*(sin(wc*t));
vf=abs(fft(Vam,10000))/10000;
figure;
plot(t,Vam);
 
hold on;
plot(t,V1,'r')
plot(t,V2,'r');
xlabel('frequency');
ylabel('amplitude');
 
grid on;

