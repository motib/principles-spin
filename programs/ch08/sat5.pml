/* Copyright 2007 by Moti Ben-Ari under the GNU GPL; see readme.txt */

active proctype sat() {
	bool a, b, c, d, e, f, g, h, i, j, k, l, m, n, o, p, q, r, s, t, u, v, w, x, y;
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
	if :: q = true :: q = false fi;
	if :: r = true :: r = false fi;
	if :: s = true :: s = false fi;
	if :: t = true :: t = false fi;
	if :: u = true :: u = false fi;
	if :: v = true :: v = false fi;
	if :: w = true :: w = false fi;
	if :: x = true :: x = false fi;
	if :: y = true :: y = false fi;

	result =
	(!a || !b ||  c ||  d ||  e) &&
	(!a ||  b || !c ||  d ||  e) &&
	( a || !b || !c ||  d ||  e) &&
	(!a ||  b ||  c || !d ||  e) &&
	( a || !b ||  c || !d ||  e) &&
	( a ||  b || !c || !d ||  e) &&
	(!a || !b || !c || !d ||  e) &&
	(!a ||  b ||  c ||  d || !e) &&
	( a || !b ||  c ||  d || !e) &&
	( a ||  b || !c ||  d || !e) &&
	(!a || !b || !c ||  d || !e) &&
	( a ||  b ||  c || !d || !e) &&
	(!a || !b ||  c || !d || !e) &&
	(!a ||  b || !c || !d || !e) &&
	( a || !b || !c || !d || !e) &&
	( a ||  b ||  c ||  d ||  e) &&
	(!f ||  g ||  h ||  i ||  j) &&
	( f || !g ||  h ||  i ||  j) &&
	( f ||  g || !h ||  i ||  j) &&
	(!f || !g || !h ||  i ||  j) &&
	( f ||  g ||  h || !i ||  j) &&
	(!f || !g ||  h || !i ||  j) &&
	(!f ||  g || !h || !i ||  j) &&
	( f || !g || !h || !i ||  j) &&
	( f ||  g ||  h ||  i || !j) &&
	(!f || !g ||  h ||  i || !j) &&
	(!f ||  g || !h ||  i || !j) &&
	( f || !g || !h ||  i || !j) &&
	(!f ||  g ||  h || !i || !j) &&
	( f || !g ||  h || !i || !j) &&
	( f ||  g || !h || !i || !j) &&
	(!f || !g || !h || !i || !j) &&
	(!k ||  l ||  m ||  n ||  o) &&
	( k || !l ||  m ||  n ||  o) &&
	( k ||  l || !m ||  n ||  o) &&
	(!k || !l || !m ||  n ||  o) &&
	( k ||  l ||  m || !n ||  o) &&
	(!k || !l ||  m || !n ||  o) &&
	(!k ||  l || !m || !n ||  o) &&
	( k || !l || !m || !n ||  o) &&
	( k ||  l ||  m ||  n || !o) &&
	(!k || !l ||  m ||  n || !o) &&
	(!k ||  l || !m ||  n || !o) &&
	( k || !l || !m ||  n || !o) &&
	(!k ||  l ||  m || !n || !o) &&
	( k || !l ||  m || !n || !o) &&
	( k ||  l || !m || !n || !o) &&
	(!k || !l || !m || !n || !o) &&
	(!p ||  q ||  r ||  s ||  t) &&
	( p || !q ||  r ||  s ||  t) &&
	( p ||  q || !r ||  s ||  t) &&
	(!p || !q || !r ||  s ||  t) &&
	( p ||  q ||  r || !s ||  t) &&
	(!p || !q ||  r || !s ||  t) &&
	(!p ||  q || !r || !s ||  t) &&
	( p || !q || !r || !s ||  t) &&
	( p ||  q ||  r ||  s || !t) &&
	(!p || !q ||  r ||  s || !t) &&
	(!p ||  q || !r ||  s || !t) &&
	( p || !q || !r ||  s || !t) &&
	(!p ||  q ||  r || !s || !t) &&
	( p || !q ||  r || !s || !t) &&
	( p ||  q || !r || !s || !t) &&
	(!p || !q || !r || !s || !t) &&
	(!u ||  v ||  w ||  x ||  y) &&
	( u || !v ||  w ||  x ||  y) &&
	( u ||  v || !w ||  x ||  y) &&
	(!u || !v || !w ||  x ||  y) &&
	( u ||  v ||  w || !x ||  y) &&
	(!u || !v ||  w || !x ||  y) &&
	(!u ||  v || !w || !x ||  y) &&
	( u || !v || !w || !x ||  y) &&
	( u ||  v ||  w ||  x || !y) &&
	(!u || !v ||  w ||  x || !y) &&
	(!u ||  v || !w ||  x || !y) &&
	( u || !v || !w ||  x || !y) &&
	(!u ||  v ||  w || !x || !y) &&
	( u || !v ||  w || !x || !y) &&
	( u ||  v || !w || !x || !y) &&
	(!u || !v || !w || !x || !y) &&
	(!a ||  f ||  k ||  p ||  u) &&
	( a || !f ||  k ||  p ||  u) &&
	( a ||  f || !k ||  p ||  u) &&
	(!a || !f || !k ||  p ||  u) &&
	( a ||  f ||  k || !p ||  u) &&
	(!a || !f ||  k || !p ||  u) &&
	(!a ||  f || !k || !p ||  u) &&
	( a || !f || !k || !p ||  u) &&
	( a ||  f ||  k ||  p || !u) &&
	(!a || !f ||  k ||  p || !u) &&
	(!a ||  f || !k ||  p || !u) &&
	( a || !f || !k ||  p || !u) &&
	(!a ||  f ||  k || !p || !u) &&
	( a || !f ||  k || !p || !u) &&
	( a ||  f || !k || !p || !u) &&
	(!a || !f || !k || !p || !u) &&
	(!b ||  g ||  l ||  q ||  v) &&
	( b || !g ||  l ||  q ||  v) &&
	( b ||  g || !l ||  q ||  v) &&
	(!b || !g || !l ||  q ||  v) &&
	( b ||  g ||  l || !q ||  v) &&
	(!b || !g ||  l || !q ||  v) &&
	(!b ||  g || !l || !q ||  v) &&
	( b || !g || !l || !q ||  v) &&
	( b ||  g ||  l ||  q || !v) &&
	(!b || !g ||  l ||  q || !v) &&
	(!b ||  g || !l ||  q || !v) &&
	( b || !g || !l ||  q || !v) &&
	(!b ||  g ||  l || !q || !v) &&
	( b || !g ||  l || !q || !v) &&
	( b ||  g || !l || !q || !v) &&
	(!b || !g || !l || !q || !v) &&
	(!c ||  h ||  m ||  r ||  w) &&
	( c || !h ||  m ||  r ||  w) &&
	( c ||  h || !m ||  r ||  w) &&
	(!c || !h || !m ||  r ||  w) &&
	( c ||  h ||  m || !r ||  w) &&
	(!c || !h ||  m || !r ||  w) &&
	(!c ||  h || !m || !r ||  w) &&
	( c || !h || !m || !r ||  w) &&
	( c ||  h ||  m ||  r || !w) &&
	(!c || !h ||  m ||  r || !w) &&
	(!c ||  h || !m ||  r || !w) &&
	( c || !h || !m ||  r || !w) &&
	(!c ||  h ||  m || !r || !w) &&
	( c || !h ||  m || !r || !w) &&
	( c ||  h || !m || !r || !w) &&
	(!c || !h || !m || !r || !w) &&
	(!d ||  i ||  n ||  s ||  x) &&
	( d || !i ||  n ||  s ||  x) &&
	( d ||  i || !n ||  s ||  x) &&
	(!d || !i || !n ||  s ||  x) &&
	( d ||  i ||  n || !s ||  x) &&
	(!d || !i ||  n || !s ||  x) &&
	(!d ||  i || !n || !s ||  x) &&
	( d || !i || !n || !s ||  x) &&
	( d ||  i ||  n ||  s || !x) &&
	(!d || !i ||  n ||  s || !x) &&
	(!d ||  i || !n ||  s || !x) &&
	( d || !i || !n ||  s || !x) &&
	(!d ||  i ||  n || !s || !x) &&
	( d || !i ||  n || !s || !x) &&
	( d ||  i || !n || !s || !x) &&
	(!d || !i || !n || !s || !x) &&
	(!e ||  j ||  o ||  t ||  y) &&
	( e || !j ||  o ||  t ||  y) &&
	( e ||  j || !o ||  t ||  y) &&
	(!e || !j || !o ||  t ||  y) &&
	( e ||  j ||  o || !t ||  y) &&
	(!e || !j ||  o || !t ||  y) &&
	(!e ||  j || !o || !t ||  y) &&
	( e || !j || !o || !t ||  y) &&
	( e ||  j ||  o ||  t || !y) &&
	(!e || !j ||  o ||  t || !y) &&
	(!e ||  j || !o ||  t || !y) &&
	( e || !j || !o ||  t || !y) &&
	(!e ||  j ||  o || !t || !y) &&
	( e || !j ||  o || !t || !y) &&
	( e ||  j || !o || !t || !y) &&
	(!e || !j || !o || !t || !y) &&
	true;

	printf("a b c d e f g h i j k l m n o p q r s t u v w x y \n");
	printf("%d %d %d %d %d %d %d %d %d %d %d %d %d %d %d %d %d %d %d %d %d %d %d %d %d \n", a, b, c, d, e, f, g, h, i, j, k, l, m, n, o, p, q, r, s, t, u, v, w, x, y);
	printf("Result = %d\n", result);
	assert(!result);
}
