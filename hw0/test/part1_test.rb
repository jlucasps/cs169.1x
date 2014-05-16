gem 'minitest'
require "minitest/autorun"
require_relative '../src/part1'


# Testing sum method
class TestPart1Sum < Minitest::Test

  def test_empty_array
    assert_equal 0, sum( [] )
  end

  def test_nil_array
    assert_equal 0, sum( [] )
  end

  def test_valid_array
    assert_equal 6, sum( [1,2,3] )
  end

end

# Testing max_2_sum method
class TestPart1Max2Sum < Minitest::Test

  def test_empty_array
    assert_equal 0, max_2_sum( [] )
  end

  def test_nil_array
    assert_equal 0, max_2_sum( nil )
  end

  def test_1_sized_array
    assert_equal 5, max_2_sum( [ 5 ] )
  end

  def test_ordered_array
    assert_equal 11, max_2_sum( [ 1, 2, 3, 4, 5, 6 ] )
  end

  def test_unordered_array
    assert_equal 11, max_2_sum( [ 6, 5, 4, 3, 2, 1 ] )
  end

  def test_random_order_array
    assert_equal 14, max_2_sum( [ 1, 9, 3, 4, 5, 2, 3 ] )
  end

end


# Testing sum_to_n method

class TestSumToN < MiniTest::Test

  def test_nil_array
    assert_equal false, sum_to_n?( nil, 1)
  end

  def test_empty_array
    assert_equal false, sum_to_n?( [], 1)
  end

  def test_ordered_array_sum_to_n
    assert_equal true, sum_to_n?( [1, 2, 3, 4, 5], 7 )
  end

  def test_ordered_array_not_sum_to_n_same_element
    assert_equal false, sum_to_n?( [1, 2, 3, 4, 5], 10 )
  end

  def test_ordered_array_not_sum_to_n
    assert_equal false, sum_to_n?( [1, 2, 3, 4, 5], 11 )
  end

  def test_ordered_array_not_sum_to_n_with_negative
    assert_equal false, sum_to_n?( [-1, -2, 3, 4, 6, -8], 12 )
  end

end