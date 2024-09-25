%To open code live in matlab complier use link given below
%https://drive.mathworks.com/sharing/12a84578-1ed3-452a-bf2a-f0ae7be40a2e 
%Filter definition (a 5-point averager)
b = [0.2 0.2 0.2 0.2 0.2];
a = [1 0 0 0 0];

%Frequency response calculations and plots
[h,th] = freqz(b,a,32);
figure(1)
plot(th,abs(h)),title('Magnitude Response.'),xlabel('Radians');
figure(2)
plot(th,20*log(abs(h))),xlabel('Radians'),title('dB Magnitude response');
figure(3)
subplot(211),plot(th,angle(h)),title('Phase Response')
subplot(212),plot(th,grpdelay(b,a,32)),xlabel('Radians'),
title('Groupdelay Response');

%Impulse response calculations and plot
x = [1 zeros(1,31)];
y = filter(b,a,x);
figure(4)
stem(y),title('Impulse Response.'),xlabel('Seconds.');

%Polse-Zero plot
[z,p,k] = tf2zp(b,a);
figure(5)
zplane(z,p)