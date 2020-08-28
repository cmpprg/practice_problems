require 'minitest/autorun'
require 'minitest/pride'
require './lib/fibonacci'

class FibonacciTest < Minitest::Test
  def setup
    @fib = Fibonacci.new
  end

  def test_it_exists
    assert_instance_of Fibonacci, @fib
  end

  def test_fibonacci_classic_recursive_method_works
    assert_equal 'Invalid position number!', @fib.position_classic_recursive(-1)
    assert_equal 0, @fib.position_classic_recursive(0)
    assert_equal 1, @fib.position_classic_recursive(1)
    assert_equal 1, @fib.position_classic_recursive(2)
    assert_equal 2, @fib.position_classic_recursive(3)
    assert_equal 3, @fib.position_classic_recursive(4)
    assert_equal 5, @fib.position_classic_recursive(5)
    assert_equal 8, @fib.position_classic_recursive(6)
    assert_equal 13, @fib.position_classic_recursive(7)
    assert_equal 21, @fib.position_classic_recursive(8)
  end

  def test_fibonacci_hash_method_works
    assert_equal 'Invalid position number!', @fib.position_hash_recursive(-1)
    assert_equal 0, @fib.position_hash_recursive(0)
    assert_equal 1, @fib.position_hash_recursive(1)
    assert_equal 1, @fib.position_hash_recursive(2)
    assert_equal 2, @fib.position_hash_recursive(3)
    assert_equal 3, @fib.position_hash_recursive(4)
    assert_equal 5, @fib.position_hash_recursive(5)
    assert_equal 8, @fib.position_hash_recursive(6)
    assert_equal 13, @fib.position_hash_recursive(7)
    assert_equal 21, @fib.position_hash_recursive(8)
  end
end
