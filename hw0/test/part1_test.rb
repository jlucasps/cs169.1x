gem 'minitest'
require "minitest/autorun"
require_relative '../src/part1'


class TestPart1 < Minitest::Test

  # Testing sum method

  def test_sum_empty_array
    assert 0, sum( [] )
  end

  def test_sum_nil_array
    assert 0, sum( [] )
  end

  def test_sum_valid_array
    assert 6, sum( [1,2,3] )
  end

  # Testing max_2_sum method

end