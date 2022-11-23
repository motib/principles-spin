/* Copyright 2007 by Moti Ben-Ari under the GNU GPL; see readme.txt */

#define LEN 5

inline Input(n) {
  if
  :: i[n] = 'a'
  :: i[n] = 'b'
  :: i[n] = 'c'
  fi
}

active proctype FA() {
  byte h;
  byte i[LEN];
  Input(0); Input(1); Input(2); Input(3); i[4] = '.';
q0: if
    :: i[h] == 'a'  -> h++; goto q0;
    :: i[h] == 'b'  -> h++; goto q3;
    :: i[h] == 'b'  -> h++; goto q1
    fi;
q1: if
    :: i[h] == 'b'  -> h++; goto q2
    fi;
q2: if
    :: i[h] == 'b'  -> h++; goto q1;
    :: i[h] == '.'  -> goto accept
    fi;
q3: if
    :: i[h] == 'c'  -> h++; goto q3;
    :: i[h] == '.'  -> goto accept
    fi;
accept: 
    printf("Accepted!\n");
	assert(false)
}

active proctype Watchdog() {
end:	timeout -> printf("Rejected ...\n")
}
