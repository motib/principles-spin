/* Copyright 2007-10 by Moti Ben-Ari under the GNU GPL; see readme.txt */

byte    n = 0;

proctype P() {
    byte temp, i;
    for (i : 1..10) {
        temp = n;
        n = temp + 1
    }
}

init {
    atomic {
        run P();
        run P()
    }
    (_nr_pr == 1);
    printf("The value is %d\n", n);
    assert (n > 2)
}
