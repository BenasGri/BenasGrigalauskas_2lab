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

ypgr = f1(x);   %pagrindines funkcijos rezultatai
eta = 0.8;      %mokymosi greitis

for n = 1:10000
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
        %sigmoidine aktyvavimo funkcija
        y(i) = y1*w21 + y2*w22 + y3*w23 + y4*w24 + b21;
        %klaidos radimas
        e(i) = ypgr(i) - y(i);
        %antro sluoksnio parametru atnaujimas
        w21 = w21 + eta*e(i)*x(i);
        w22 = w22 + eta*e(i)*x(i);
        w23 = w23 + eta*e(i)*x(i);
        w24 = w24 + eta*e(i)*x(i);

        b21 = b21 + eta*e(i);
        %pirmo sluoksnio parametru atnaujinimas
        w11 = w11 + eta*e(i)*y1*(1-y1)*w21*x(i);
        w12 = w12 + eta*e(i)*y2*(1-y2)*w22*x(i);
        w13 = w13 + eta*e(i)*y3*(1-y3)*w23*x(i);
        w14 = w14 + eta*e(i)*y4*(1-y4)*w24*x(i);

        b11 = b11 + eta*e(i)*y1*(1-y1)*w21;
        b12 = b12 + eta*e(i)*y2*(1-y2)*w22;
        b13 = b13 + eta*e(i)*y3*(1-y3)*w23;
        b14 = b14 + eta*e(i)*y4*(1-y4)*w24;
    end
end

%Rezultatu isvedimas
figure(1);
hold on
plot(x,ypgr)
plot(x,y)
hold off
legend('Pagrindine funkcija','Aproksimuota funkcija');
xlabel('x');
ylabel('y');
grid on;

function y = f1(x)
    y = (1 + 0.6 * sin((2*pi*x)/0.7)) + ((0.3 * sin(2*pi*x))/2);
end
