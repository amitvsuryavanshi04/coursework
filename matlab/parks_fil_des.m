%Parks-McClellen FIR Filter Design
%Filter Specifications
f = [0 .1 .2 .3 .4 .6 .7 .8 .9 1];
m = [0 0 1 1 1 1 0 0 0 0];

%Filter Design
N = 20; %Filter order;
b = remez(N,f,m)

%Frequency Response
[h,th] = freqz(b,1,128);

%Specified vs designed frequency response
figure(1)
plot(f,m,th/pi,abs(h),'x')
title('Specified (solid curve) vs Designed (x curve) Filter.'),xlabel('Normalized Frequecy, fs/2 = 1')