require 'Bank'

describe 'Bank' do
  let( :bank ){ Bank.new }
  describe '#initialize' do
    it 'initializes as instance of Bank' do
      expect(bank).to be_an_instance_of(Bank)
    end

    it 'initializes with a balance of 0' do
      expect(bank.balance).to eq(0)
    end
  end
end
