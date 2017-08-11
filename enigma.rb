require_relative 'connexion_table'

class Enigma
  def encrypt(letter)
    crypted_letter1 = ConnexionTable::TABLE[letter.to_sym]
  end
end

enigma = Enigma.new

p ConnexionTable::TABLE[:a]
p enigma.encrypt('a')
