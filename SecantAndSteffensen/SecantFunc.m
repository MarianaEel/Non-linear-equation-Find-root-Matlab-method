function [xvect, xsection, xvalue, times, i] = SecantFunc(head, butt, toll, maxtimes, func)
%SECANTFUNC Summary of this function goes here: 
% This fuction aims to find a root of <func> 
% 
%Detailed explanation goes here
% This fuction aims to find a root of <func> in section [head, butt], under
% erorr <toll>, and under max loop times maxtimes
% Output the vector of x <xvect>, the section of x <xsection>, 
% the function value of x <xvalue> and run times <times>
% END

% INITIATION
times = zeros(1,maxtimes);
xvect = zeros(1,maxtimes);
xvalue = zeros(1,maxtimes);
xsection = zeros(1,maxtimes);
section = toll+1;
a = head;
b = butt;

% LOOP & FIND ROOT
i = 0;
while(i<maxtimes && section>toll)
    i = i + 1;
    times(1,i) = i;
    
    mid = b -(b-a)*func(b)/(func(b)-func(a));
    fmid = feval(func, mid);
    xvect(1,i) = mid;
    xvalue(1,i) = fmid;
    
    a = b;
    b = mid;
    
    section = abs(b-a);
    xsection(1,i) = section;
end

return
