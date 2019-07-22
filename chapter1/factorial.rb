def multi(a, b)
  a * b
end

def fact(n)
  return 1 if n <= 1

  left = n
  n.downto(2) do |i|
    left = multi(left, i - 1)
  end

  return left
end


# testing
require 'test/unit'

class FactorialTest < Test::Unit::TestCase
  def test_successful
    assert_equal fact(0), 1
    assert_equal fact(1), 1
    assert_equal fact(2), 2
    assert_equal fact(3), 6
    assert_equal fact(4), 24
    assert_equal fact(5), 120
    assert_equal fact(9), 362_880
  end
end
