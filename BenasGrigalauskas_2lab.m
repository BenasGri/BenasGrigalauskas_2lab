clear all;
close all;
clc;

x = 0:1/19:1;       %iejimo skaiciu vektorius

%neuronu skaicius: 4
%pirmo sluoksnio svoriai
w11 = rand(1);
w12 = rand(1);
w13 = rand(1);
w14 = rand(1);
%pirmo sluoksnio bias
b11 = rand(1);
b12 = rand(1);
b13 = rand(1);
b14 = rand(1);
%antro sluoksnio svoriai
w21 = rand(1);
w22 = rand(1);
w23 = rand(1);
w24 = rand(1);
%antro sluoksnio bias
b21 = rand(1);

function y = f1(x)
    y = (1 + 0.6 * sin((2*pi*x)/0.7)) + ((0.3 * sin(2*pi*x))/2);
end
