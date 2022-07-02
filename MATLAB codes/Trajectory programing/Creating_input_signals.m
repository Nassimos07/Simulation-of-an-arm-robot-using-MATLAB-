%% Trajectoire
clear all;close all;
% importaion of the robot model
mdl_puma560;
%Minimazation of the trajectory
trj=real(trajectory())/20;
trj(:,3)=0;

%x=0.25;y=0;
% The first poisition of the tool 
x=trj(1,1);y=trj(1,2);
% Displaing of the trajectory and  the first position 
plot(trj(:,1)',trj(:,2)',x,y,'*')

%% Forward Kinematics 
%A 95 mm extension in the T6 z-direction
p560.tool=transl(0,0,0.095);
% shifting the origin of the robot from the point inside the robot to the base of the pedestal.
p560.base=transl(-0.5,0,0);

q1=[0,0,0,0,0,0];
T1=transl(x,y,0)*troty(pi);
T(:,:,1)=T1;

for i=2:length(trj)
    T(:,:,i)=transl(trj(i,1),trj(i,2),0)*troty(pi);
end
%% Inverse Kinematics
for i=1:length(trj)
    q(i,:)=p560.ikine6s(T(:,:,i));
end

%p560.plot(q)

%% Creation of input signals ( Exportation signals in csv file)
timestep = 0.1;
ind = 1;
for i=1:length(q)
    signal(ind,1)=timestep*ind;
    signal(ind,2:6)=q(i,1:5);
    signal(ind,7)=0;
    ind = ind + 1;
end
SimTime = timestep * (ind-1); %Simulation Time
Signal=signal';
fid=fopen('signal.csv','wt');
fprintf(fid,'%g, %g, %g, %g, %g, %g, %g\n',Signal);
fclose(fid);
fprintf('Signal file generated successfully !!\n')
