/* Copyright 2007 by Moti Ben-Ari under the GNU GPL; see readme.txt */

active proctype sat() {
	bool a, b, c, d, e, f, g, h, i, j, k, l, m, n, o, p;
	bool result;

	if :: a = true :: a = false fi;
	if :: b = true :: b = false fi;
	if :: c = true :: c = false fi;
	if :: d = true :: d = false fi;
	if :: e = true :: e = false fi;
	if :: f = true :: f = false fi;
	if :: g = true :: g = false fi;
	if :: h = true :: h = false fi;
	if :: i = true :: i = false fi;
	if :: j = true :: j = false fi;
	if :: k = true :: k = false fi;
	if :: l = true :: l = false fi;
	if :: m = true :: m = false fi;
	if :: n = true :: n = false fi;
	if :: o = true :: o = false fi;
	if :: p = true :: p = false fi;

	result =
	(!a || !b ||  c ||  d) &&
	(!a ||  b || !c ||  d) &&
	( a || !b || !c ||  d) &&
	(!a ||  b ||  c || !d) &&
	( a || !b ||  c || !d) &&
	( a ||  b || !c || !d) &&
	(!a || !b || !c || !d) &&
	( a ||  b ||  c ||  d) &&
	(!e ||  f ||  g ||  h) &&
	( e || !f ||  g ||  h) &&
	( e ||  f || !g ||  h) &&
	(!e || !f || !g ||  h) &&
	( e ||  f ||  g || !h) &&
	(!e || !f ||  g || !h) &&
	(!e ||  f || !g || !h) &&
	( e || !f || !g || !h) &&
	(!i ||  j ||  k ||  l) &&
	( i || !j ||  k ||  l) &&
	( i ||  j || !k ||  l) &&
	(!i || !j || !k ||  l) &&
	( i ||  j ||  k || !l) &&
	(!i || !j ||  k || !l) &&
	(!i ||  j || !k || !l) &&
	( i || !j || !k || !l) &&
	(!m ||  n ||  o ||  p) &&
	( m || !n ||  o ||  p) &&
	( m ||  n || !o ||  p) &&
	(!m || !n || !o ||  p) &&
	( m ||  n ||  o || !p) &&
	(!m || !n ||  o || !p) &&
	(!m ||  n || !o || !p) &&
	( m || !n || !o || !p) &&
	(!a ||  e ||  i ||  m) &&
	( a || !e ||  i ||  m) &&
	( a ||  e || !i ||  m) &&
	(!a || !e || !i ||  m) &&
	( a ||  e ||  i || !m) &&
	(!a || !e ||  i || !m) &&
	(!a ||  e || !i || !m) &&
	( a || !e || !i || !m) &&
	(!b ||  f ||  j ||  n) &&
	( b || !f ||  j ||  n) &&
	( b ||  f || !j ||  n) &&
	(!b || !f || !j ||  n) &&
	( b ||  f ||  j || !n) &&
	(!b || !f ||  j || !n) &&
	(!b ||  f || !j || !n) &&
	( b || !f || !j || !n) &&
	(!c ||  g ||  k ||  o) &&
	( c || !g ||  k ||  o) &&
	( c ||  g || !k ||  o) &&
	(!c || !g || !k ||  o) &&
	( c ||  g ||  k || !o) &&
	(!c || !g ||  k || !o) &&
	(!c ||  g || !k || !o) &&
	( c || !g || !k || !o) &&
	(!d ||  h ||  l ||  p) &&
	( d || !h ||  l ||  p) &&
	( d ||  h || !l ||  p) &&
	(!d || !h || !l ||  p) &&
	( d ||  h ||  l || !p) &&
	(!d || !h ||  l || !p) &&
	(!d ||  h || !l || !p) &&
	( d || !h || !l || !p) &&
	true;

	printf("a b c d e f g h i j k l m n o p \n");
	printf("%d %d %d %d %d %d %d %d %d %d %d %d %d %d %d %d \n", a, b, c, d, e, f, g, h, i, j, k, l, m, n, o, p);
	printf("Result = %d\n", result);
	assert(!result);
}
