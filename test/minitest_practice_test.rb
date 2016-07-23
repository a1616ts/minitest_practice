require_relative './test_helper'

class MinitestPracticeTest < Minitest::Test
  def setup
    @main = ::MinitestPractice::Main.new
  end

  def test_that_it_has_a_version_number
    refute_nil ::MinitestPractice::VERSION
  end

  def test_odd?
    assert @main.odd?(1), '1 is odd'
    refute @main.odd?(2), '2 is not odd'
    assert @main.odd?(3), '3 is odd'
    refute @main.odd?(4), '4 is not odd'
  end

  def test_enough_length?
    refute @main.enough_length?('aa'), '2 is not enough length'
    assert @main.enough_length?('aaa'), '3 is enough length'
    assert @main.enough_length?('aaaaaaaa'), '8 is enough length'
    refute @main.enough_length?('aaaaaaaaa'), '9 is not enough length'
  end

  def test_divide
    assert_equal(@main.divide(10, 2), 5)
    assert_raises(StandardError) {　@main.divide(1, 0) }
  end

  def test_fizz_buzz
    assert_equal(@main.fizz_buzz(3), 'Fizz')
    assert_equal(@main.fizz_buzz(5), 'Buzz')
    assert_equal(@main.fizz_buzz(15), 'FizzBuzz')
  end

  def test_hello
    assert_output('hello') { @main.hello() }
  end
end
