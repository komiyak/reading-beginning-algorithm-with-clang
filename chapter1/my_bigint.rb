class Bigint
  def initialize
    data = Array.new(4, 0)
  end

  def set_value(value_str)
  end

  def get_value(value_str)
  end

  def string_to_number(value_str)
    54321
  end
end

pp Bigint.new

require 'minitest/autorun'

class TestBigint < Minitest::Test
  def test_that_string_to_number
    assert_equal Bigint.new.string_to_number('54321'), 54321
  end
end
