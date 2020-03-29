// n C x: n個からx個選ぶパターン数
mint choose(int n, int x) {
  mint p = 1, q = 1;
  rep(i, x) {
    p *= (n - i);
    q *= (i + 1);
  }
  return p / q;
}
