function [xvect, xsection, xvalue, times, i] = BisectionFunc(head, butt, toll, maxtimes, func)
%BISECTIONFUNC Summary of this function goes here: 
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
    mid = (a + b)/2;
    fmid = feval(func, mid);
    xvect(1,i) = mid;
    xvalue(1,i) = fmid;%解决xvect和xvalue申请空间问题，加快算法速度；
    if(fmid*feval(func, a)> 0)
        a = mid;
    else
        b = mid;
    end
    section = abs(b-a);
    xsection(1,i) = section;
end

return
