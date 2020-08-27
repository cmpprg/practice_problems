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
    assert_equal 'Invalid position number!', @fib.position(-1)
    assert_equal 0, @fib.position(0)
    assert_equal 1, @fib.position(1)
    assert_equal 1, @fib.position(2)
    assert_equal 2, @fib.position(3)
    assert_equal 3, @fib.position(4)
    assert_equal 5, @fib.position(5)
    assert_equal 8, @fib.position(6)
    assert_equal 13, @fib.position(7)
    assert_equal 21, @fib.position(8)
  end
end
