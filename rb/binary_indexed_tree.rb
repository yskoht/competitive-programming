# Binary Indexed Tree
# https://www.topcoder.com/community/competitive-programming/tutorials/binary-indexed-trees
# http://hos.ac/slides/20140319_bit.pdf
class BIT
  def initialize(n)
    @tree = Array.new(n + 1, 0)
  end

  def add(i, diff)
    while i < @tree.size
      @tree[i] += diff
      i += (i & -i)
    end
  end

  def sum(i)
    t = 0
    while i > 0 do
      t += @tree[i]
      i -= (i & -i)
    end
    return t
  end
end
