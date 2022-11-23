chan ch = [3] of { byte };

active proctype Sort() {
  byte n;
  select(n : 1..3); ch !! n;
  select(n : 1..3); ch !! n;
  select(n : 1..3); ch !! n;
  ch ? n; printf("%d\n", n);
  ch ? n; printf("%d\n", n);
  ch ? n; printf("%d\n", n)
}
