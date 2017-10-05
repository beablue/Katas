require 'minitest/autorun'
require 'minitest/pride'

require_relative 'fizzbuzz'

class FizzBuzzTest < Minitest::Test
  def test_up_to_one
    output = fizzbuzz_upto(1)

    assert_equal "1", output
  end

  def test_up_to_first_Fizz
    output = fizzbuzz_upto(3)

    assert_equal "1\n2\nFizz", output
  end

  def test_up_to_first_Buzz
    output = fizzbuzz_upto(5)

    assert_equal "1\n2\nFizz\n4\nBuzz", output
  end

  def test_up_to_second_Fizz
    output = fizzbuzz_upto(6)

    assert_equal "1\n2\nFizz\n4\nBuzz\nFizz", output
  end

  def test_up_to_second_Buzz
    output = fizzbuzz_upto(10)

    assert_equal "1\n2\nFizz\n4\nBuzz\nFizz\n7\n8\nFizz\nBuzz", output
  end

  def test_up_to_first_FizzBuzz
    output = fizzbuzz_upto(15)

    assert_equal "1\n2\nFizz\n4\nBuzz\nFizz\n7\n8\nFizz\nBuzz\n11\nFizz\n13\n14\nFizzBuzz", output
  end

end
