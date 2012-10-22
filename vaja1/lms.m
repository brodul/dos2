function [y, err, w]=lms(u,d,N,mi);
w = [0 0 0 0 0 1 0 0 0 0 0]
for n = N:1500,    
    u(n-N+1:n)
   y(n) = w*u(n-N+1:n)';
   E(n) = d(n) - y(n);
   mi*u(n-N+1:n)'*E(n);
   w = w + mi*u(n-N+1:n)*E(n)';
end
err = E;
plot(E);
