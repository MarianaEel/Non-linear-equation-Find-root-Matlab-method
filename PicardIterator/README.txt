Picard iterator is to transform the original function into form like 
x=f(x) a<x<b;//[a,b]is the section to find root
if (for every x in [a,b], a<=f(x)<=b && there is a positive number q<1, for each x in [a,b], |f'(x)|<=q<1)
	for any initiate value a<=x0<=b, this iteration method can converge to the root of the original function.
	with error estimation listed below:
		|x(r)-x(k)|<=q/(1-q)*|x(k)-x(k-1)|//x(r)is the root, x(k)is the Kth iteration value of x;