clear all; 
clc;

x=linspace(0,1,20);

func=(1+0.6*sin(2*pi*x/0.7)+0.3*sin(2*pi*x))/2;

figure(1)
plot(x,func,x,func);
title('Etalonines funkcijos grafikas');
xlabel('Iejimo vektoriaus pozicija'); 
ylabel('f(x)');

%rnd vert?s

w1 = randn(1);
W2 = randn(1);
b1 = randn(1);


[pks,locs] = findpeaks(funck);
c1 = x(locs(1,1));
c2 = x(locs(1,2));

r1 = 0.2;
r2 = 0.2;

func1 = zeros(1,20);
func2 = zeros(1,20);






