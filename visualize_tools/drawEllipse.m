function [ ] = drawEllipse( q, color )
% function to draw the ellipse

a = 70e-3;
b = 50e-3;
t = linspace(0,2*pi);
X = a*cos(t);
Y = b*sin(t);
w = q(3);
x = q(1) + X*cos(w) - Y*sin(w);
y = q(2) + X*sin(w) + Y*cos(w);
plot(x,y,color,'LineWidth',2)

end

