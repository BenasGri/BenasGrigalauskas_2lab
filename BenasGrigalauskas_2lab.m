clear all;
close all;
clc;

x = 0:1/19:1;

function y = f1(x)
    y = (1 + 0.6 * sin((2*pi*x)/0.7)) + ((0.3 * sin(2*pi*x))/2);
end
