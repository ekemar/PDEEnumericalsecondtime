clear all
clc
clf
mass_coffi = [9,1,1,0,2,4,2,6,2,6];
mass = mass_coffi+1;
n = 1:1:3;
freq_teo = n.*pi;
Nodes = 10;

K = gallery('tridiag',Nodes,1,-2,1);
k = 11;
eigenvalues = flip(eig(K));
eigenfreq = sqrt(-eigenvalues).*sqrt(k./(mass))';
i = 1;
colors = ['b', 'r', 'g'];
omega = eigenfreq(i);
t = linspace(1,20,100);
u= cos(omega*t);    %Calculate output
figure(i)
plot(t,u)
i = i+1;

omega = eigenfreq(i);
t = linspace(1,20,100);
u= cos(omega*t);    %Calculate output
figure(i)
plot(t,u)
i = i+1; 
omega = eigenfreq(i);
t = linspace(1,20,100);
u= cos(omega*t);    %Calculate output
figure(i)
plot(t,u)
i = i+1;
omega = eigenfreq(i);
t = linspace(1,20,100);
u= cos(omega*t);    %Calculate output
figure(i)
plot(t,u)
i = i+1;
 omega = eigenfreq(i);
t = linspace(1,20,100);
u= cos(omega*t);    %Calculate output
figure(i)
plot(t,u)
i = i+1;
    omega = eigenfreq(i);
t = linspace(1,20,100);
u= cos(omega*t);    %Calculate output
figure(i)
plot(t,u)
i = i+1;
   omega = eigenfreq(i);
t = linspace(1,20,100);
u= cos(omega*t);    %Calculate output
figure(i)
plot(t,u)
i = i+1;
  omega = eigenfreq(i);
t = linspace(1,20,100);
u= cos(omega*t);    %Calculate output
figure(i)
plot(t,u)
i = i+1;
% Displaomega = eigenfreq(i);
t = linspace(1,20,100);
u= cos(omega*t);    %Calculate output
figure(i)
plot(t,u)
i = i+1;

omega = eigenfreq(i);
t = linspace(1,20,100);
u= cos(omega*t);    %Calculate output
figure(i)
plot(t,u)
i = i+1;
i

