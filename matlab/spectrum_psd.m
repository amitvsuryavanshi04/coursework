%Generate a 5Hz signal of 1 sec duration sampled at 100 Hz
t = 0:0.01:1;
x = sin(2*pi*5*t);
clf
figure(1)
plot(t,x),title('Original Signal'),xlabel('Time in seconds.')

%Adding random noise with a standard deviation of 1 to produce a noisy
%signal y
y = x + 1*randn(1,101);
figure(2)
plot(t,y),title('Noisy Signal'),xlabel('Time in seconds.')

%Compute the DFT and power spectral density (PSD) of the noisy signal y
%using 128 point FFT
Y = fft(y,128);
Pyy = Y.*conj(Y)/128;

%Changing the horizontal axis to represent analog frequency in the
%frequency response plot
f = 100/128*(0:63);
figure(3)
plot(f,Pyy(1:64)),title('Power Spectral Density [PSD].'),xlabel('Frequency (Hz).')