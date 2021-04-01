function [desired_state] = traj_line(t, ~)
%This file can be edited in whatever way you wish but you are not suppsed to edit the line above this 
t_max = 30;
t = max(0, min(t, t_max));
t = t/t_max;
T1 = 0.05;
T2 = 0.4 + T1;
T3 = 0.2 + T2;
T4 = 0.2 + T3;
T5 = 1;

X1 = 185;
Y1 = -65;
X2 = 165;
Y2 = -85;
% X3 = 145;
% Y3 = -95;
% X4 = 195;
% Y4 = -155;
% X5 = 195;
% Y5 = -195;
X3 = 195;
Y3 = -155;
X4 = 195;
Y4 = -195;

if t<T1
    t1 = t/T1;
    posx=0;
    posy=0;
    posz=2*(10*t1.^3 - 15*t1.^4 + 6*t1.^5);
    velx=0;
    vely=0;
    velz =2*((30/t_max)*t1.^2 - (60/t_max)*t1.^3 + (30/t_max)*t1.^4);
    accx =0;
    accy =0;
    accz =2*((60/t_max^2)*t1 - (180/t_max^2)*t1.^2 + (120/t_max^2)*t1.^3);

elseif t<T2
     t2 = (t-T1)/(T2-T1);
    posx = X1*(10*t2.^3 - 15*t2.^4 + 6*t2.^5);
    posy = Y1*(10*t2.^3 - 15*t2.^4 + 6*t2.^5);
    posz = 2;
    vely = Y1*((30/t_max)*t2.^2 - (60/t_max)*t2.^3 + (30/t_max)*t2.^4);
    velx = X1*((30/t_max)*t2.^2 - (60/t_max)*t2.^3 + (30/t_max)*t2.^4);
    velz = 0;
    accy = Y1*((60/t_max^2)*t2 - (180/t_max^2)*t2.^2 + (120/t_max^2)*t2.^3);
    accx = X1*((60/t_max^2)*t2 - (180/t_max^2)*t2.^2 + (120/t_max^2)*t2.^3);
    accz = 0;
   
elseif t<T3
     t3 = (t-T2)/(T3-T2);   
    posx = X1 + (X2-X1)*(10*t3.^3 - 15*t3.^4 + 6*t3.^5);
    posy = Y1 + (Y2-Y1)*(10*t3.^3 - 15*t3.^4 + 6*t3.^5);
    posz = 2;
    vely = (Y2-Y1)*((30/t_max)*t3.^2 - (60/t_max)*t3.^3 + (30/t_max)*t3.^4);
    velx = (X2-X1)*((30/t_max)*t3.^2 - (60/t_max)*t3.^3 + (30/t_max)*t3.^4);
    velz = 0;
    accy = (Y2-Y1)*((60/t_max^2)*t3 - (180/t_max^2)*t3.^2 + (120/t_max^2)*t3.^3);
    accx = (X2-X1)*((60/t_max^2)*t3 - (180/t_max^2)*t3.^2 + (120/t_max^2)*t3.^3);
    accz = 0;

elseif t<T4
     t4 = (t-T3)/(T4-T3);   
    posx = X2 + (X3-X2)*(10*t4.^3 - 15*t4.^4 + 6*t4.^5);
    posy = Y2 + (Y3-Y2)*(10*t4.^3 - 15*t4.^4 + 6*t4.^5);
    posz = 2;
    vely = (Y3-Y2)*((30/t_max)*t4.^2 - (60/t_max)*t4.^3 + (30/t_max)*t4.^4);
    velx = (X3-X2)*((30/t_max)*t4.^2 - (60/t_max)*t4.^3 + (30/t_max)*t4.^4);
    velz = 0;
    accy = (Y3-Y2)*((60/t_max^2)*t4 - (180/t_max^2)*t4.^2 + (120/t_max^2)*t4.^3);
    accx = (X3-X2)*((60/t_max^2)*t4 - (180/t_max^2)*t4.^2 + (120/t_max^2)*t4.^3);
    accz = 0;

else
     t4 = (t-T4)/(T5-T4);   
    posx = X3 + (X4-X3)*(10*t4.^3 - 15*t4.^4 + 6*t4.^5);
    posy = Y3 + (Y4-Y3)*(10*t4.^3 - 15*t4.^4 + 6*t4.^5);
    posz = 2;
    vely = (Y4-Y3)*((30/t_max)*t4.^2 - (60/t_max)*t4.^3 + (30/t_max)*t4.^4);
    velx = (X4-X3)*((30/t_max)*t4.^2 - (60/t_max)*t4.^3 + (30/t_max)*t4.^4);
    velz = 0;
    accy = (Y4-Y3)*((60/t_max^2)*t4 - (180/t_max^2)*t4.^2 + (120/t_max^2)*t4.^3);
    accx = (X4-X3)*((60/t_max^2)*t4 - (180/t_max^2)*t4.^2 + (120/t_max^2)*t4.^3);
    accz = 0;
    
end

% output desired state
desired_state.pos = [posx; posy; posz];
desired_state.vel = [velx; vely; velz];
desired_state.acc = [accx; accy; accz];
desired_state.yaw = 0;
desired_state.yawdot = 0;

end
