%To open code live in matlab complier use link given below
%https://drive.mathworks.com/sharing/12a84578-1ed3-452a-bf2a-f0ae7be40a2e 
%Calculation of Frequency respone of FIR Filter (specifically a digital
%Differentiator)
%Theoretical Expression y(n) = x(n) - (n-1)

%Filter Definition 
b = [1 -1];
a = 1;

%Frequency response computation 
[h,th] = freqz(b,a,32);

%Frequency response graph
clf
figure(1)
subplot(211),plot(th,abs(h)),title('Magnitude Response'),
subplot(212),plot(th,angle(h)),title('Phase Response.'),
xlabel('Radians')