require 'minitest/autorun'
require 'minitest/pride'
require './lib/binary_translator'

class BinaryTranslatorTest < Minitest::Test
  def test_it_exists
    bt = BinaryTranslator.new
    expected = BinaryTranslator

    assert_instance_of expected, bt
  end

  def test_it_translates_single_letters
    bt = BinaryTranslator.new
    actual = bt.translate("a")
    expected = "000001"

    actual_2 = bt.translate("z")
    expected_2 = "011010"

    assert_equal expected, actual
    assert_equal expected_2, actual_2
  end

  def test_it_translates_words
    bt = BinaryTranslator.new
    actual = bt.translate("turing")
    expected = "010100010101010010001001001110000111"

    assert_equal expected, actual
  end

  def test_it_translates_capital_letters
    bt = BinaryTranslator.new
    actual = bt.translate("A")
    expected = "000001"

    assert_equal expected, actual
  end

  def test_it_translates_capital_words
    bt = BinaryTranslator.new
    actual = bt.translate("TURING")
    expected = "010100010101010010001001001110000111"

    assert_equal expected, actual
  end

  def test_it_translates_spaces_to_zeroes
    bt = BinaryTranslator.new
    actual = bt.translate(" ")
    expected = "000000"

    assert_equal expected, actual
  end

  def test_it_ignores_non_letter_characters
    bt = BinaryTranslator.new
    actual = bt.translate("!@{$#%^&*()}")
    expected = ""

    assert_equal expected, actual
  end

  def test_it_handles_words_and_spaces
    bt = BinaryTranslator.new
    actual = bt.translate("Hello World!")
    expected = "001000000101001100001100001111000000010111001111010010001100000100"

    assert_equal expected, actual
  end
end
