x = [1 2 3 4];  % Input sequence
h = [3 2 1];    % Impulse response

% Lengths of sequences
len_x = length(x);
len_h = length(h);

% Length of output convolution result
len_y = len_x + len_h - 1;
y = zeros(1, len_y);  % Initialize the output sequence with zeros

% Perform convolution
for i = 1:len_x
    for j = 1:len_h
        y(i + j - 1) = y(i + j - 1) + x(i) * h(j);
    end
end

% Display the output
disp('The convolution result is:');
disp(y);
