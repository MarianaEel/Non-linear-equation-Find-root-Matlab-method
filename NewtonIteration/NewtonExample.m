% Funtion: x = 2*sin(x+pi/3);
% Find the smallest positive root
% Toll=10^-8

% INITIATE INPUT

func = @(x) x - 2*sin(x+pi/3);

head = 1; 
toll = 10^-8;
maxtimes = 40;

% Run
[xvect, xsection, xvalue, times, iter] = NewtonIteration(head,toll,maxtimes,func);

% Save outputs

outfile = fopen('Newtonout.txt','w');
fprintf(outfile, 'N\t X\t\t\t   section\t\t\t f(x) \n');
for i=1:1:iter
    fprintf(outfile, '%g\t',times(i));
    fprintf(outfile, '%6.10f\t',xvect(i));
    fprintf(outfile, '%6.10f\t',xsection(i));
    fprintf(outfile, '%6.10f\n',xvalue(i));
end
