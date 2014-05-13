gem 'minitest'
require "minitest/autorun"
require_relative '../src/part1'


# Testing sum method
class TestPart1Sum < Minitest::Test

  def test_empty_array
    assert 0, sum( [] )
  end

  def test_nil_array
    assert 0, sum( [] )
  end

  def test_valid_array
    assert 6, sum( [1,2,3] )
  end

end

# Testing max_2_sum method
class TestPart1Max2Sum < Minitest::Test

  def test_empty_array
    assert 0, max_2_sum( [] )
  end

  def test_nil_array
    assert 0, max_2_sum( nil )
  end

  def test_1_sized_array
    assert 5, max_2_sum( [ 5 ] )
  end

  def test_ordered_array
    assert 11, max_2_sum( [ 1, 2, 3, 4, 5, 6 ] )
  end

  def test_unordered_array
    assert 11, max_2_sum( [ 6, 5, 4, 3, 2, 1 ] )
  end

  def test_random_order_array
    assert 13, max_2_sum( [ 1, 9, 3, 4, 5, 2, 3 ] )
  end

end