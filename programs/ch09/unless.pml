/* Copyright 2007 by Moti Ben-Ari under the GNU GPL; see readme.txt */

#include "for.h"
chan ch = [0] of { int };

active proctype Generate() {
	for (i, 1, 10)
		if :: ch ! -2
		   :: ch ! -1
           :: ch ! 0
           :: ch ! 1
           :: ch ! 2
        fi
	rof (i);
    ch ! 100; /* Make sure it terminates */
}

active proctype Divide() {
	int n = 1;
end:
  do
  :: {
         ch ? n;
    	 printf("%d\n", 100 / n)
	 } unless {
	     n == 0 -> 
            printf("Attempt to divide by zero\n")
     }
  od
}
