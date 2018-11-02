% Suggest fi(x) is first-order differentiable in closed interval ,function
% x=fi(x) has a root in interval [a,b], |fi'(x)-3|<1, please construct
% an iterator that locally converge to the root


% CONSTRUCTING¡¡ITERATOR
% x-3*x=fi(x)-3*x;
% -2*x = fi(x)-3*x;
% x = -1/2*(fi(x)-3*x);//|fi'(x)-3|<1   -->  |-1/2*(fi(x)-3*x)|<1/2

% INITIATE INPUT
fi = @(x) 3.5*x;
% fi = @(x) input('Please enter the function fi(x)');

func = @(x) -1/2*(fi(x)-3*x);
head = -1; 
butt = 1;
toll = 10^-8;
maxtimes = 40;

% Run
[xvect, xsection, xvalue, times, iter] = PicardIterator(head,toll,maxtimes,func);

% Save outputs

outfile = fopen('N3out.txt','w');
fprintf(outfile, 'N\t X\t\t\t   section\t\t\t f(x) \n');
for i=1:1:iter
    fprintf(outfile, '%g\t',times(i));
    fprintf(outfile, '%6.10f\t',xvect(i));
    fprintf(outfile, '%6.10f\t',xsection(i));
    fprintf(outfile, '%6.10f\n',xvalue(i));
end
