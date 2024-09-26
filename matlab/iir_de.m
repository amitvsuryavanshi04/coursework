%Matlab code for Infinite impulse Response filter.
%IIR Filter Design 
%filter definition 

clc;
clear;

b = [0.0013 0.0064 0.0128 0.0128 0.0064 0.0013];
a = [1.0 -2.9754 3.8060 -2.5453 0.8811 -0.1254];

%Frequency Response 
[h,th] = freqz(b,a,128);
clf
figure(1)
plot(th,abs(h)),title('Magnitude Response.'),xlabel('Radians')
figure(2)
subplot(211),plot(th,angle(h)),title('Phase Response.'),ylabel('Radians.');
subplot(212),plot(th,grpdelay(b,a,128)),title('GroupDelay Response.'),xlabel('Radians.'),ylabel('Seconds.');

%Impulse response 
x = [1 zeros(1,127)];
y = filter(b,a,x);
figure(3)
stem(y),title("Impulse Response."),xlabel('n')

%Pole-Zero Plot
[z,p,k] = tf2zp(b,a);
figure(4)
zplane(z,p)
