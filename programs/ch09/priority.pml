/* Copyright 2007 by Moti Ben-Ari under the GNU GPL; see readme.txt */

byte n = 0;
bool interrupt = false;

proctype Compute() provided (!interrupt) {
  n = n + 1
}

proctype Interrupt() {
  byte temp;
  interrupt = true;
  temp = n + 1;
  n = temp;
  interrupt = false
}

init {
  atomic { run Interrupt(); run Compute() }
  (_nr_pr == 1);
  assert (n == 2)
}
