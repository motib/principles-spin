/* Copyright 2007-10 by Moti Ben-Ari under the GNU GPL; see readme.txt */

chan ch = [0] of { byte };

active proctype Producer() {
  byte i;
  for (i : 1..10) {
    if
    :: ch ! 0
    :: ch ! 10
    :: ch ! 20
    fi
  }
}

active proctype Consumer() {
  byte n;
end:
  do
  :: ch ? n -> printf("%d\n", n)
  od
}
