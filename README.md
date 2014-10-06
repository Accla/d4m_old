# d4m

Adds associative array matrix multiplication over an arbitrary ring.  It could use some optimization and generalization to non-numeric rings.

Here's a demo:

	A = Assoc('r1,r1,r2,r2,','c1,c2,c1,c2,','1,2,3,4,');
	A2collide = A * A.';
	A2normal  = mtimesCustom(A,A.',0,@plus,@times);
	A2minplus = mtimesCustom(A,A.',Inf,@min,@plus);
	
	>> displayFull(A)
	   c1,c2,
	r1,1, 2, 
	r2,3, 4, 
	>> displayFull(A.')
	   r1,r2,
	c1,1, 3, 
	c2,2, 4, 
	>> displayFull(A2collide)
	   r1,r2,
	r1,2, 2, 
	r2,2, 2, 
	>> displayFull(A2normal)
	   r1,r2,
	r1,5, 11,
	r2,11,25,
	>> displayFull(A2minplus)
	   r1,r2,
	r1,2, 4, 
	r2,4, 6, 


### Misc
Note this version of d4m does not include the external libraries needed to interface with Accumulo.  You can download the [external libraries here](http://www.mit.edu/~kepner/D4M/gpl.html).


See the [Full D4M Readme here](d4m_api/README.txt).


 


 




 

