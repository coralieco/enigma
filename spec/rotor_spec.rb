require_relative '../rotor'

describe Rotor do
  describe 'Rotor' do
    let(:rotor) { Rotor.new(1) }

     describe '#permutator' do
       it { expect([rotor.permutator]).to eq [["b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z", "a"]] }
     end

    describe '#rotor_combination' do
      it do
        expect([rotor.rotor_combination]).to eq [{ "a" => "b", "b" => "c", "c" => "d", "d" => "e", "e" => "f", "f" => "g", "g" => "h", "h" => "i", "i" => "j", "j" => "k", "k" => "l", "l" => "m", "m" => "n", "n" => "o", "o" => "p", "p" => "q", "q" => "r", "r" => "s", "s" => "t", "t" => "u", "u" => "v", "v" => "w", "w" => "x", "x" => "y", "y" => "z", "z" => "a" }]
      end
    end
  end
end
