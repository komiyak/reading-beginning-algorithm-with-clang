class Bigint
  DIGIT = 2

  def initialize
    @data = Array.new(4, 0)
  end

  def set_value(value_str)
  end

  def get_value(value_str)
  end

  def get_data
    @data
  end

  def string_to_number(value_str)
    @data.each {|i| i = 0}

    index = 0
    while !value_str.nil? && value_str != ''
      v = value_str
      if value_str.length >= DIGIT
        v = value_str[-DIGIT..-1]
        value_str.slice!(-DIGIT..-1)
      else
        value_str = ''
      end

      @data[index] = v.to_i
      index += 1
    end
  end
end

pp Bigint.new

require 'minitest/autorun'

class TestBigint < Minitest::Test
  def test_that_string_to_number
    bigint = Bigint.new

    #bigint.string_to_number(nil)
    #assert_equal bigint.get_data, 0

    bigint.string_to_number('54321')
    pp bigint.get_data
  end
end
