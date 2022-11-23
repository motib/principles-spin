/* Copyright 2007 by Moti Ben-Ari under the GNU GPL; see readme.txt */

#define N 2
byte clock = 0;

proctype T(byte ID; byte period; byte exec) {
	byte next = 0;
	byte deadline = period;
	bool done = false;
	do
	::  atomic {
			(clock >= next) && (clock < deadline) ->
				clock = clock + exec;
				next = next + period;
				done = true;
				printf("Process=%d, clock=%d\n", ID, clock)
		}
	::  atomic {
			clock >= deadline ->
				assert done;
				deadline = deadline + period;
				done = false
		}
	od
}

proctype Idle() {
	do
	:: 	atomic {	
			timeout -> {
			clock++;
			printf("Idle, clock=%d\n", clock)
			}
		}
	od
}

init {
	atomic {
		run Idle();
		run T(0, 2, 1);
		run T(1, 5, 2)
	}
}
