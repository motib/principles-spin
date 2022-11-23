/* Copyright 2007 by Moti Ben-Ari under the GNU GPL; see readme.txt */

#define N 2
byte clock = 0;
bool done[N] = false;

proctype T(byte ID; byte period; byte exec) {
	byte next = 0;
	do
	::  atomic {
			clock >= next ->
				clock = clock + exec;
				next = next + period;
				done[ID] = true;
				printf("Process=%d, clock=%d\n", ID, clock)
		}
	od
}

proctype Watchdog(byte ID; byte period) {
	byte deadline = period;
	do
	::  atomic {
			clock >= deadline ->
				assert done[ID];
				deadline = deadline + period;
				done[ID] = false
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
		run T(0, 2, 1); run Watchdog(0, 2);
		run T(1, 5, 2); run Watchdog(1, 5)
	}
}
