% The code performs Huffman encoding and decoding on a set of symbols with 
% user-defined probabilities.
% It computes important metrics such as entropy, average code length, 
% coding efficiency, and redundancy.
% The code demonstrates how to efficiently compress data and how well this 
% compression can be compared to the theoretical limits given by entropy.
%------------------------------------------------------------------------%
clc;
clear;
x=input('Enter the number of symbol');
N=1:x;
disp('The number of symbols are N:- ');
disp(N);
P=input('Enter the probabilities:- ');
disp(P);
S=sort(P,'descend');
disp('The sorted probabilities are:-');
disp(S);
[dict,avglen]=huffmandict(N,S);
disp('The average length of the code is:-');
disp(avglen);
H=0;
for i=1:x
    H=H+(P(i)*log2(1/P(i)));
end
disp('The entropy is:- ');
disp(H);
disp('bits/msg');
E=(H/avglen);
Eper=(H/avglen)*100;
disp('Efficiency is');
disp(Eper);
R=(1-E)*100;
disp('The code redundany is;-');
disp(R)
codeword=huffmanenco(N,dict);
disp('The code words are:- ');
disp(codeword);
decode=huffmandeco(codeword,dict);
disp('Decoded output is:- ');
disp(decode);