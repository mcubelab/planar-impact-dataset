function [  ] = visualize_data( trial, withVid )
load('data_ellipse')
load('v_models')

qf=data.states_i(trial,1:3);
vf=data.states_i(trial,4:6);
qf(1) = 0.2;                      % re-center the throw

vp    = data.states_f(trial,4:6);
v_mdl = v_models(trial,1:3);

tf = 0.05;

[q0, v0] = backPropTraj(qf',vf', tf);

ti = linspace(0,tf,100);
tp = linspace(0,3*tf,100);


q_pre  = (q0 + v0*ti - kron([0;1;0],0.5*9.81*ti.^2))';

q_post = (qf' + vp'.*tp - kron([0;1;0],0.5*9.81*tp.^2))';
q_mdl  = (qf' + v_mdl'.*tp - kron([0;1;0],0.5*9.81*tp.^2))';

q  = [q_pre; q_post];
qm = [q_pre; q_mdl];
t = [ti, tp];

if withVid
    v = VideoWriter(sprintf('ellipse_comp_%d.mp4',trial),'MPEG-4');
    v.Quality = 100;
    v.FrameRate = 30;
    open(v)
    figure(2)
    clf
end

figure(2)
for i=1:length(t)
    hold on
    drawEllipse( q(i,:),'r')
    drawEllipse(qm(i,:),'b')
    plot([0,0.6],[0 0], 'k','LineWidth',2)
    axis([-0 .4 0 0.4])
    axis equal
    legend 'Measured' 'Model'
    drawnow
    
    if withVid
        frame = getframe(gcf);
        writeVideo(v,frame);
    else
        timer = 1e-3;
        tic;
        while toc<timer
        end
    end
    
    if i<length(t)
        clf
    end
end

if withVid
    cd vids
    close(v)
    cd ..
end

end

