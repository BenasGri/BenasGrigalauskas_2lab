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
%pagrindines funkcijos rezultatai
ypgr = f1(x);

for i = 1:20
    %Tinklo atsako skaiciavimas
    v11 = x(i)*w11+b11;
    v12 = x(i)*w12+b12;
    v13 = x(i)*w13+b13;
    v14 = x(i)*w14+b14;
    %Aktyvaviams
    y1 = 1/(1+exp((-1)*v11));
    y2 = 1/(1+exp((-1)*v12));
    y3 = 1/(1+exp((-1)*v13));
    y4 = 1/(1+exp((-1)*v14));
    %Isejimas
    y(i) = y1*w21 + y2*w22 + y3*w23 + y4*w24 + b21;
end

function y = f1(x)
    y = (1 + 0.6 * sin((2*pi*x)/0.7)) + ((0.3 * sin(2*pi*x))/2);
end
