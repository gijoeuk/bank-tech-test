require 'Bank'

describe 'Bank' do
  let( :bank ){ described_class.new }
  describe '#initialize' do
    it 'initilizes as instance of Bank' do
      expect(bank).to be_an_instance_of(Bank)
    end
  end
end
