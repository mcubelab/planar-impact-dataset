function [q0, v0] = backPropTraj(qf, vf, t)

v0 = vf - [0; 9.81*t; 0];
q0 = qf - v0*t + [0; 0.5*9.81*t^2; 0];

end