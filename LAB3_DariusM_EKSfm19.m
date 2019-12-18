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
w2 = randn(1);
b1 = randn(1);


[pks,locs] = findpeaks(func);
c1 = x(locs(1,1));
c2 = x(locs(1,2));

r1 = 0.2;
r2 = 0.2;

func1 = zeros(1,20);
func2 = zeros(1,20);

%apskai?iuojame spindulio fukncijas

for i = 1:20
    func1(i) = exp(-((x(i)-c1)^2)/(2*r1^2));
    func2(i) = exp(-((x(i)-c2)^2)/(2*r2^2));
end

E = 0;
e = 0;
er = zeros(1, length(x));

%suskai?iuojams sumas su svoriais

for i = 1:20
    w(i) = w1*func1(i)+w2*func2(i)+b1;
end




