%Butterworth lowpass IIR Filter Design
%Filter specifications 
N = 5; %Filter order
fs = 300; %Sampling Frequency
fc = 30; %Cut-off frequency

%Filter Design
[b,a] = butter(N,2*fc/fs);
%Designed filter frequency response
[h,th] = freqz(b,a,128);
f = (th/pi)*(fs/2);
clf
figure(1)
plot(f,abs(h)),title('Magnitude Response'),xlabel('Hz')
figure(2)
subplot(211),plot(f,angle(h)),title('Phase response'),
ylabel('Hertz')
subplot(212),plot(f,grpdelay(b,a,128)),title('GroupDelay Response.'),xlabel('Hertz.'),ylabel('Seconds.')