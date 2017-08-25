require_relative 'connexion_table'
require_relative 'rotor'
require_relative 'reflector'

class Enigma
  def initialize(row_1, row_2, row_3)
    @connexion_table = ConnexionTable::TABLE
    @rotor_1 = Rotor.new(row_1)
    @rotor_2 = Rotor.new(row_2)
    @rotor_3 = Rotor.new(row_3)
    @reflector = Reflector::TABLE
  end

  def encrypt(letter)
    letter_tc = @connexion_table[letter.to_sym]
    letter_rotor1 = @rotor_1.rotor_combination[letter_tc]
    letter_rotor2 = @rotor_2.rotor_combination[letter_rotor1]
    letter_rotor3 = @rotor_3.rotor_combination[letter_rotor2]
    letter_reflector = @reflector[letter_rotor3.to_sym]
  end

  def decrypt(letter)
    letter_reflector = @reflector[letter.to_sym]
    letter_rotor3 = @rotor_3.rotor_combination.key(letter_reflector)
    letter_rotor2 = @rotor_2.rotor_combination.key(letter_rotor3)
    letter_rotor1 = @rotor_1.rotor_combination.key(letter_rotor2)
    letter_tc = @connexion_table[letter_rotor1.to_sym]
  end


  def encrypt_word(word)
    encrypted_word = []
    word.split('').each do |letter|
      encrypted_word << encrypt(letter)
    end
    encrypted_word.join()
  end

  def decrypt_word(word)
    decrypted_word = []
    word.split('').each do |letter|
      decrypted_word << decrypt(letter)
    end
    decrypted_word.join()
  end

  def self.one_rotor_rotation(row)
    Rotor.new(row + 1)
  end
end

enigma = Enigma.new(1, 2, 3)

# p ConnexionTable::TABLE[:a]
# p Reflector::TABLE[:a]
# p enigma.encrypt('a')
#p enigma.one_rotor_rotation(1)
# p enigma.decrypt('p')
p enigma.encrypt_word('valerian')
# p enigma.decrypt_word('apinwopz')