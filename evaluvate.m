function score = evaluvate()
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
avg=0.15;
c=readmatrix("current.csv");
d=readmatrix("desired.csv");
i=1;
n=size(c);
n=n(1);
er=0;
while i<=n-1
    er=er+0.5*(c(i+1,1)-c(i,1))*((c(i,2)-d(i,2))^2+(c(i,3)-d(i,3))^2+(c(i,4)-d(i,4))^2+(c(i+1,2)-d(i+1,2))^2+(c(i+1,3)-d(i+1,3))^2+(c(i+1,4)-d(i+1,4))^2);
    i=i+1;
end

score=100-(100/(1+2.718^(100*(-er+avg))));
disp(score)

