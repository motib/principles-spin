/* Copyright 2007-10 by Moti Ben-Ari under the GNU GPL; see readme.txt */

active proctype Consumer() {
  byte n, i;
  for (i : 1..10) {
    if
    :: n = 0
    :: n = 10
    :: n = 20
    fi;
    printf("%d\n", n)
  }
}
