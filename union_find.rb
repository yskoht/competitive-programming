# Union Find
# http://www.prefield.com/algorithm/container/union_find.html
class UnionFind
  def initialize(n)
    @data = Array.new(n, -1)
  end

  def union_set(a, b)
    a = root(a)
    b = root(b)
    if a != b
      a, b = b, a if @data[b] < @data[a]
      @data[a] += @data[b]
      @data[b] = a
    end
    return a != b
  end

  def find_set(a, b)
    root(a) == root(b)
  end

  def root(a)
    return a if @data[a] < 0
    @data[a] = root(@data[a])
  end
end
