/* Copyright 2007 by Moti Ben-Ari under the GNU GPL; see readme.txt */

active proctype P() {
	byte days;
	byte month = 2;
	int year = 2000;
	if
	:: month == 1 || month == 3  || month == 5 || month == 7 ||
	   month == 8 || month == 10 || month == 12 -> 
			days = 31
	:: month == 4 || month == 6  || month == 9 || month == 11 ->
			days = 30
	:: month == 2 && year % 4 == 0 -> 
		days = (year % 100 != 0 || year % 400 == 0 -> 28 : 29)
	fi;
	printf("month = %d, year = %d, days = %d\n", month, year, days)
}
