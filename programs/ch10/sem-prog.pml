/* Copyright 2007 by Moti Ben-Ari under the GNU GPL; see readme.txt */

byte sem = 1;

active proctype P() {
  do 
  :: atomic { sem > 0 ; sem = sem - 1 }
progress:     
     sem = sem + 1
  od
}
active proctype Q() { 
  do 
  :: atomic { sem > 0 ; sem = sem - 1 }
     sem = sem + 1
  od
}
active proctype R() {
  do 
  :: atomic { sem > 0 ; sem = sem - 1 }
     sem = sem + 1
  od
}
