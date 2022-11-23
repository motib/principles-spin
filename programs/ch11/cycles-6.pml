/* Copyright 2007 by Moti Ben-Ari under the GNU GPL; see readme.txt */

#define N 4

typedef ROW {
	bool row[N];
}

ROW step[N];
bool used[N];
byte result[4];

inline initV(r, c, v) {
	step[r-1].row[c-1] = v
}

inline initValues() {
	initV(1, 1, false);
	initV(1, 2, true);
	initV(1, 3, true);
	initV(1, 4, false);
	initV(2, 1, true);
	initV(2, 2, false);
	initV(2, 3, false);
	initV(2, 4, true);
	initV(3, 1, false);
	initV(3, 2, true);
	initV(3, 3, false);
	initV(3, 4, false);
	initV(4, 1, true);
	initV(4, 2, false);
	initV(4, 3, true);
	initV(4, 4, false)
}

inline Write() {
	byte k;
    k = 0;
	do
	:: k == N || result[k] == 0 -> break
	:: else ->
		printf("%d ", result[k]);
		k++
	od;
	printf("\n")
}

active proctype Cycles() {
	byte initial, old, new, i;
	initValues();
	select(initial : 1..4);
	old = initial;
	do
	::	result[i] = old;
		i++;
        select(new : 1..4);
		!used[new-1];
		step[old-1].row[new-1];
		if
		:: new == initial -> break
		:: else -> 
			used[new-1] = true;
			old = new
		fi
	od;
	Write();
	assert(false)
}
