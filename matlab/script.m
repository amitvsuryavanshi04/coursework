%code to perform convolution between two simple digital sequences 
x = [1 2 3 4];
h = [3 2 1];
y = conv(x,h) %conv is the built-in function used for convolution
%% 
% After running the code we will get output as y = [3 8 14 20 11 4]
