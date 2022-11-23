/* Copyright 2007 by Moti Ben-Ari under the GNU GPL; see readme.txt */

#include "for.h"
chan ch = [0] of { byte };

active proctype Producer() {
  for (i, 1, 10) 
    if
    :: ch ! 0
    :: ch ! 10
    :: ch ! 20
    fi
  rof (i)
}

active proctype Consumer() {
  byte n;
end:
  do
  :: ch ? n -> printf("%d\n", n)
  od
}
