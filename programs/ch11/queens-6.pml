/* Copyright 2007 by Moti Ben-Ari under the GNU GPL; see readme.txt */

byte result[8];
bool a[8];
bool b[15];
bool c[15];

inline Write() {
    byte i;
	for (i : 1..8) {
		printf("%d, ", result[i-1])
	}
    printf("\n")
}

active proctype Queens() {
	byte col = 1;
	byte row;
	do
	::	select(row : 1..8);
		!a[row-1];
		!b[row+col-2];
		!c[row-col+7];
		a[row-1]     = true;
		b[row+col-2] = true;
		c[row-col+7] = true;
		result[col-1] = row;
		if
		:: col == 8 -> break
		:: else     -> col++
		fi
	od;
	_ = result[0];
	Write();
	assert(false)
}
