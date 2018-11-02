function [xvect, xsection, xvalue, times, i] = Steffensen(head, toll, maxtimes, func)
%STEFFENSEN Summary of this function goes here: 
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


% LOOP & FIND ROOT
i = 0;
while(i<maxtimes && section>toll)
    i = i + 1;
    times(1,i) = i;
    
    b = a - func(a)^2/(func(a)-func(a-func(a)));
    fx = feval(func, b);
    xvect(1,i) = b;
    xvalue(1,i) = fx;
    
    section = abs(b-a);
    xsection(1,i) = section;
    
    a = b;
end

return
