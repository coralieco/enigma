class Rotor

  # initialiser les rotor avec un row
  def initialize(row)
    @row = row
  end

  ALPHABET = ('a'..'z').to_a

  def rotor_combination
    Hash[ ALPHABET.zip(permutator)]
  end

  def permutator
    generated_alphabet = []
    ALPHABET.each do |letter|
      if (letter.ord + @row) < 123 && (letter.ord + @row) > 96
        generated_alphabet << (letter.ord + @row).chr
      else
        generated_alphabet << (letter.ord + @row - 123 + 97 ).chr
      end
    end
    generated_alphabet
  end
end

rotor = Rotor.new(2)
#
# p Rotor::ALPHABET
# p rotor.permutator
# p rotor.rotor_combination
