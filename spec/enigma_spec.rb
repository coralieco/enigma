require_relative '../enigma'
require_relative '../connexion_table'
require_relative '../rotor'

describe Enigma do
  describe 'Enigma' do
    let(:letter_to_encrypt) { 'a' }
    let(:row_1) { 1 }
    let(:row_2) { 2 }
    let(:row_3) { 3 }
    let(:enigma) { Enigma.new(row_1, row_2, row_3) }
    it { expect(enigma.encrypt(letter_to_encrypt)).to eq 'i' }
  end
end
