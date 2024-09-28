%Filter Specification [Yulewalk IIR Filter Design]
f = [0 0.1 0.2 0.3 0.4 0.6 0.7 0.8 0.9 1];
m = [0 0 1 1 1 1 0 0 0 0];

%Filter Design 
N  = 10; %Filter Order
[b,a] = yulewalk(N,f,m)

%Designed filter frequency response
[h,th] = freqz(b,a,128);

%Specialized and designed filter frequency responses comparison
figure(1)
plot(f,m,th/pi,abs(h),'x'),title('Specified(Solid Curve) vs Designed (x cureve) Filter Frequency Response'),xlabel('Normalized Frequency,fs/2 = 1')