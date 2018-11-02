% E.G Using Secant & Steffensen method to find root of 2*cos(x) = 1 +
% sin(x) in interval [0,1/4*pi]. toll=10^-8, Comparing their efficiency

% INITIATE INPUT
func = @(x) -2*cos(x) + 1 + sin(x);
head = 0; 
butt = 1/4*pi;
toll = 10^-8;
maxtimes = 40;

% Run
[xvect1, xsection1, xvalue1, times1, iter1] = SecantFunc(head,butt,toll,maxtimes,func);
[xvect2, xsection2, xvalue2, times2, iter2] = Steffensen(head,toll,maxtimes,func);

% Save Output
outfile = fopen('N2Out.txt','w');
fprintf(outfile, 'Secnat  X\t\t\t\tsection\t\t\t f(x)\t\t\tSteffensenX\t\t\tsection\t\t\t f(x) \n');
for i=1:1:max(iter1,iter2)
    fprintf(outfile, '%g\t',times1(i));
    fprintf(outfile, '%6.10f\t',xvect1(i));
    fprintf(outfile, '%6.10f\t',xsection1(i));
    fprintf(outfile, '%6.10f\t',xvalue1(i));
    
    fprintf(outfile, '%g\t',times2(i));
    fprintf(outfile, '%6.10f\t',xvect2(i));
    fprintf(outfile, '%6.10f\t',xsection2(i));
    fprintf(outfile, '%6.10f\n',xvalue2(i));
end