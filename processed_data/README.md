
## Guide to dataset

* **data_ellipse**: Data structure containing the following:

data.states_i : pre contact configuration and velocity of the object (x,y,theta,dx,dy,dtheta) in meters and radians.

data.states_f : post contact configuration and velocity of the object (x,y,theta,dx,dy,dtheta) in meters and radians.

n: the normal component of the Jacobian of the point of contact

d: the tangent component of the Jacobian of the point of contact


* **gpFeature2** and **gpFeature5**: Features computed for each impact for the data-driven contact models with 2 and 5 features respectively.

* **p_models**: The impulses predicted by models in order:

Drumwright-Shell

AP Poisson

AP Newton

Mirtich

Wang-Mason

Whittaker


* **p_true_data**: The linear impulse that best explains each interaction.

* **v_models**: the velocities of the center of mass predicted by models post contact.

* **w_true_data**: The wrench impulses for each impact as (Pt, Pn, tau) tuples.

# Object Properties:
```
m   = 36.4*1e-3;   % Mass (Kilograms)
g   = 9.81;        % Gravity (m/s^2)
a_e = 70e-3/2;     % Major Radius of ellipse (meters)
b_e = 50e-3/2;     % Minor Radius of ellipse (meters)
k_g = 0.0192;      % Radius of gyration (meters)

Mass= m*diag([1,1,k_squared]); % Mass matrix of the ellipse
h   = 1/250;                   % Sampling rate
```
