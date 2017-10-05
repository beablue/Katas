require 'minitest/autorun'
require 'minitest/pride'

require_relative 'fizzbuzz'

class FizzBuzzTest < Minitest::Test
  def test_list_1_to_100
    list_from_1_to_100 = (1..100).to_a
    list = List.new(100)

    assert_equal list_from_1_to_100, list.to_a
  end

  def test_number_is_fizz
    result = what_is_it(3)

    assert_equal result, 'fizz'
  end

  def test_number_is_buzz
    output = what_is_it(5)

    assert_equal output, 'buzz'
  end


  def test_number_is_fizzbuzz
    output = what_is_it(15)

    assert_equal output, 'fizzbuzz'
  end
end