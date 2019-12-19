clear all; 
clc;

x=linspace(0,1,20);

func=(1+0.6*sin(2*pi*x/0.7)+0.3*sin(2*pi*x))/2;

figure(1)
plot(x,func,x,func);
ylabel('f(x)');

%rnd vertes

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

%apskanciuojame spindulno fukncijas

for n = 1:20
    func1(n) = exp(-((x(n)-c1)^2)/(2*r1^2));
    func2(n) = exp(-((x(n)-c2)^2)/(2*r2^2));
end

E = 0;
e = 0;
er = zeros(1, length(x));

%suskaiciuojamos sumos su svoriais

for n = 1:20
    w(n) = w1*func1(n)+w2*func2(n)+b1;
end

for n = 1:20
    er(n) = func(n) - w(n);
    e = e + er(n);
    E = E + abs(er(n));
end

%mokymo zingsnis

l = 0.03;

MaxE = 0.01;

while(E > MaxE)
    
    %atnaujinam kintamuosius
    
    for n = 1:20
        w1 = w1 + n*er(n)*func1(n);
        w2 = w2 + n*er(n)*func2(n);
        b1 = b1 + n*er(n);
    end
    
    %pirmas sluoksnis
    
    for n = 1:20
    
        w(n) = w1*func1(n) + w2*func2(n) + b1;
    
    end
    
    E = 0;
    e = 0;
    er = zeros(1, length(x));
    
    for n = 1:20
       
        er(n) = func(n) - w(n);
        e = e + er(n);
        E = E + abs(er(n));
    
    end
    
    
    E
    
end

    
    
