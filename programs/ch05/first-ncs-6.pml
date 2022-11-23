/* Copyright 2007-10 by Moti Ben-Ari under the GNU GPL; see readme.txt */

/* 
   First attempt 
   Simulate non-termination of non-CS
   Verify Safety - invalid end state
   (ltl formula at the end of the program)
*/
byte	turn = 1;

active proctype P() {
	do 
	:: 	
		if 			/* NCS does nothing or halts */
		:: true 
		:: true -> false
		fi;
		(turn == 1);
cs:		turn = 2
	od
}

active proctype Q() {	
	do 
	:: 	
		(turn == 2);
cs:		turn = 1
	od
}

ltl { []!(P@cs && Q@cs) }
