/* Copyright 2007 by Moti Ben-Ari under the GNU GPL; see readme.txt */

#include "for.h"

active proctype Consumer() {
  byte n;
  for (i, 1, 10) 
    if
    :: n = 0
    :: n = 10
    :: n = 20
    fi;
    printf("%d\n", n)
  rof (i)
}
