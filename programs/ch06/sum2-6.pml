/* Copyright 2007-10 by Moti Ben-Ari under the GNU GPL; see readme.txt */

#define N  5

inline write(ar) {
  d_step {
    byte k;
    for (k : 0..N-1) {
      printf("%d ", ar[k]);
    }
    printf("\n")
  }
}

active proctype P() {
  int a[N];
  byte i;
  write(a);
  for (i : 0..N-1) {
    a[i] = i
  }
  write(a)
}
