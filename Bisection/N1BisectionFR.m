% ʹ�ö��ַ��󷽳�x=2^-x ��[0,1]�ĸ�����ȷ��10^-8
% ��������N1out.txt
% INITIATE INPUT
func = @(x) x - 2.^(-x);
head = 0;
butt = 1;
toll = 10^-8;
maxtimes = 40;

% INITIATE OUTPUT



% CALCULATE
[xvect, xsection, xvalue, times, iter] = BisectionFunc(head,butt,toll,maxtimes,func);

outfile = fopen('N1out.txt','w');
fprintf(outfile, 'N\t X\t\t\t   section\t\t\t f(x) \n');
for i=1:1:iter
    fprintf(outfile, '%g\t',times(i));
    fprintf(outfile, '%6.10f\t',xvect(i));
    fprintf(outfile, '%6.10f\t',xsection(i));
    fprintf(outfile, '%6.10f\n',xvalue(i));
end
