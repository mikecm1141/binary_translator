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
end
