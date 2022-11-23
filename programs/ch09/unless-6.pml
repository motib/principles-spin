/* Copyright 2007-10 by Moti Ben-Ari under the GNU GPL; see readme.txt */

chan ch = [0] of { int };

active proctype Generate() {
    int n;
    byte i;
	for (i : 1..10) {
      select (n : -2..2);
      ch ! n;
	}
    ch ! 100;  /* Make sure it terminates */
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
