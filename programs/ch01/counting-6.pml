/* Copyright 2007-10 by Moti Ben-Ari under the GNU GPL; see readme.txt */

#define N 10  /* Bounds must be constants */

active proctype P() {
	int sum = 0;
	
	byte i; 
	for (i : 1..N) {
		sum = sum + i;
    }
	printf("The sum of the first %d numbers = %d\n", N, sum);
}
