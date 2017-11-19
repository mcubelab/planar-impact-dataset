
## Guide to dataset

* **data_ellipse**: Data structure containing the following:
data.states_i : pre contact configuration and velocity of the object (x,y,theta,dx,dy,dtheta) in meters and radians.
data.states_f : post contact configuration and velocity of the object (x,y,theta,dx,dy,dtheta) in meters and radians.
n: the normal component of the Jacobian of the point of contact
d: the tangent component of the Jacobian of the point of contact

* **gpFeature2** and **gpFeature5**: Predicted impulses from the data-driven contact models with 2 and 5 features respectively, ordered as normal and tangential components.

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
