struct UnionFind {
  vector<int> d;
  UnionFind(int n = 0): d(n, -1) {}

  bool unite(int x, int y) {
    x = root(x);
    y = root(y);

    if (x != y) {
      if (d[x] > d[y]) swap(x,y);
      d[x] += d[y];
      d[y] = x;
    }
    return x != y;
  }

  bool same(int x, int y) {
    return root(x) == root(y);
  }

  int size(int x) {
    return -d[root(x)];
  }

  int root(int x) {
    if (d[x] < 0) return x;
    return d[x] = root(d[x]);
  }
};
