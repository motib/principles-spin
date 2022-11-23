/* Copyright 2007 by Moti Ben-Ari under the GNU GPL; see readme.txt */

#include "for.h"
#define N 5

inline write(ar) {
  d_step {
    for (k, 0, N-1)
      printf("%d ", ar[k]);
    rof (k);
    printf("\n")
  }
}

active proctype P() {
  int a[N];
  write(a);
  for (i, 0, N-1)
    a[i] = i
  rof (i);
  write(a)
}
