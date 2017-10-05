require 'minitest/autorun'
require 'minitest/pride'

require_relative 'fizzbuzz'

class FizzBuzzTest < Minitest::Test

  MAX_NUMBER = 100
  MULTIPLE_OF_THREE = 9
  MULTIPLE_OF_FIVE = 10
  MULTIPLE_OF_THREE_AND_FIVE = 15
  RESULT_OF_MULTIPLE_OF_THREE = 'Fizz'
  RESULT_OF_MULTIPLE_OF_FIVE = 'Buzz'
  RESULT_OF_MULTIPLE_OF_THREE_AND_FIVE = 'FizzBuzz'

  def test_list_1_to_100
    output = listmaker(MAX_NUMBER)

    assert_equal list_from_1_to_100, output
  end

  def test_multiple_of_3_is_Fizz
    output = fizzbuzz(MULTIPLE_OF_THREE)

    assert_equal RESULT_OF_MULTIPLE_OF_THREE, output
  end

  def test_multiple_of_5_is_Buzz
    output = fizzbuzz(MULTIPLE_OF_FIVE)

    assert_equal RESULT_OF_MULTIPLE_OF_FIVE, output
  end

  def test_multiple_of_15_is_FizzBuzz
    output = fizzbuzz(MULTIPLE_OF_THREE_AND_FIVE)

    assert_equal "FizzBuzz", output
  end

  def test_multiple_of_14_is_NOT_FizzBuzz
    output = fizzbuzz(14)

    assert_equal 14, output
  end

  def test__13_is_Fizz
    output = fizzbuzz(13)

    assert_equal 'Fizz', output
  end

    def test__52_is_Buzz
      output = fizzbuzz(52)

      assert_equal 'Buzz', output
    end

  def list_from_1_to_100
    numbers = (1..100)
    numbers_list = []

    numbers.each { |n| numbers_list << n }

    numbers_list
  end
end
