require 'minitest/autorun'
require 'minitest/pride'

require_relative 'rnumerals'

class RNumeralsTest < Minitest::Test
  def test_one_unit
    test_number = 1
    unit_number_roman = 'I'

    unit_number = convert_to_roman(test_number)

    assert_equal unit_number, unit_number_roman
  end

  def test_five_units
    test_number = 5
    unit_number_roman = 'V'

    unit_number = convert_to_roman(test_number)

    assert_equal unit_number, unit_number_roman
  end

  def test_ten_units
    test_number = 10
    unit_number_roman = 'X'

    unit_number = convert_to_roman(test_number)

    assert_equal unit_number, unit_number_roman
  end

  def test_four_units
    test_number = 4
    unit_number_roman = 'IV'

    unit_number = convert_to_roman(test_number)

    assert_equal unit_number, unit_number_roman
  end

  def test_six_units
    test_number = 6
    unit_number_roman = 'VI'

    unit_number = convert_to_roman(test_number)

    assert_equal unit_number, unit_number_roman
  end
end