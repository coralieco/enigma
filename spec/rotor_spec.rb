require_relative '../rotor'

describe Rotor do
  describe 'Rotor' do
    let(:rotor) { Rotor.new(1) }

     describe '#permutator' do
       it { expect([rotor.permutator]).to eq [["b", "c", "d"]] }
     end

    describe '#rotor_combination' do
      it { expect([rotor.rotor_combination]).to eq [ {"a"=>"b", "b"=>"c", "c"=>"d"} ] }
    end
  end
end
