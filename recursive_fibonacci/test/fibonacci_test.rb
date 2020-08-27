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

  def test_fibonacci_method_works
    skip
    assert_equal 3, @fib.position(4)
    assert_equal 1, @fib.position(1)
    assert_equal 13, @fib.position(7)
    assert_equal 21, @fib.position(8)
  end
end
