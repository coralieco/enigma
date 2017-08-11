require_relative '../enigma'

describe Enigma do
  describe 'Enigma' do
    let(:rotor) { Rotor.new(1) }
    it { expect(enigma.encrypt('a')).to eq 'c' }
  end
end
