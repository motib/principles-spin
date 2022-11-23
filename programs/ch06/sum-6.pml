/* Copyright 2007-10 by Moti Ben-Ari under the GNU GPL; see readme.txt */

active proctype P() {
	int sum = 0;
    byte i;

	int a[5];
	a[0] = 0; a[1] = 10; a[2] = 20; a[3] = 30; a[4] = 40;
	
	for (i : 0..4) {
		sum = sum + a[i]
	}
	printf("The sum of the numbers = %d\n", sum);
}
