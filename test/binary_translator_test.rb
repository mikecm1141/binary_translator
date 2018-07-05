require 'minitest/autorun'
require 'minitest/pride'
require './lib/binary_translator'

class BinaryTranslatorTest < Minitest::Test
  def test_it_exists
    bt = BinaryTranslator.new
    expected = BinaryTranslator

    assert_instance_of expected, bt
  end

  def test_it_translates_single_letter
    bt = BinaryTranslator.new
    actual = bt.translate("a")
    expected = "000001"

    assert_equal expected, actual
  end
end
