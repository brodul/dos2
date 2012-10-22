X = randn(1500);
W = 2.9
u = filter([1/2*(1+cos(-2*pi/W)), 1, 1/2*(1+cos(2*pi/W))], 1 , X);
d = filter([0, 0, 0, 0, 0, 0, 1], 1 , X);
mi=0.075;
N = 11;
lms(u,d,N,mi)
