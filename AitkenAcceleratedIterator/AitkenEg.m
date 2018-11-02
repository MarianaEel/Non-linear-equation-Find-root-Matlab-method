% x = -sin(x)+1;
% a root near 1/2
% 

% INITIATE INPUT

func = @(x) -sin(x)+1;
head = -1; 
butt = 1;
toll = 10^-8;
maxtimes = 40;

% Run
[xvect, xsection, xvalue, times, iter] = Aitken(head,toll,maxtimes,func);

% Save outputs

outfile = fopen('N5out.txt','w');
fprintf(outfile, 'N\t X\t\t\t   section\t\t\t f(x) \n');
for i=1:1:iter
    fprintf(outfile, '%g\t',times(i));
    fprintf(outfile, '%6.10f\t',xvect(i));
    fprintf(outfile, '%6.10f\t',xsection(i));
    fprintf(outfile, '%6.10f\n',xvalue(i));
end
