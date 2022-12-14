/* Copyright 2007 by Moti Ben-Ari under the GNU GPL; see readme.txt */

chan forks[5] = [0] of { bool };
byte numEating = 0;

proctype Phil(byte n; chan left; chan right ) {
  do 
  :: left ? _;
     right ? _;
	 numEating++;
	 assert (numEating <= 2);
	 numEating--;
	 right ! true;
	 left ! true
	od
}

proctype Fork(chan ch) {
	do
    ::  ch ! true;
		ch ? _
	od
}

init {
	atomic {
	  run Fork(forks[0]);
	  run Fork(forks[1]);
	  run Fork(forks[2]);
	  run Fork(forks[3]);
	  run Fork(forks[4]);
	  run Phil(0, forks[0], forks[1]);
	  run Phil(1, forks[1], forks[2]);
	  run Phil(2, forks[2], forks[3]);
	  run Phil(3, forks[3], forks[4]);
 	  run Phil(4, forks[4], forks[0])
	}
}
