class BinaryTranslator
  def initialize
    @alpha_to_binary = {
      " " => "000000",
      "a" => "000001",
      "b" => "000010",
      "c" => "000011",
      "d" => "000100",
      "e" => "000101",
      "f" => "000110",
      "g" => "000111",
      "h" => "001000",
      "i" => "001001",
      "j" => "001010",
      "k" => "001011",
      "l" => "001100",
      "m" => "001101",
      "n" => "001110",
      "o" => "001111",
      "p" => "010000",
      "q" => "010001",
      "r" => "010010",
      "s" => "010011",
      "t" => "010100",
      "u" => "010101",
      "v" => "010110",
      "w" => "010111",
      "x" => "011000",
      "y" => "011001",
      "z" => "011010"
    }
  end

  def translate(string)
    string_array = string.downcase.chars
    string_array.map! do |letter|
      letter = @alpha_to_binary[letter]
    end
    string_array.join
  end

  def translate_to_text(string)
    string_array = string.scan(/\d{1,6}/)
    string_array.map! do |binary|
      binary = @alpha_to_binary.key(binary)
    end
    string_array.join
  end
end
