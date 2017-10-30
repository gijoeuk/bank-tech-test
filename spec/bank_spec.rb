require 'Bank'

describe 'Bank' do

  let( :bank ){ Bank.new }
  let( :date ){ Date.new }

  describe '#initialize' do
    it 'initializes as instance of Bank' do
      expect(bank).to be_an_instance_of(Bank)
    end

    it 'initializes with a balance of 0' do
      expect(bank.balance).to eq(0)
    end

    it 'initializes with empty array of transactions' do
      expect(bank.transactions).to eq([])
    end
  end

  describe '#deposit' do
    it 'enables account holder to deposit funds' do
      bank.deposit(1000)
      expect(bank.balance).to eq(1000)
    end

    it 'adds date to each deposit' do
      bank.deposit(1000)
      expect(bank.transactions).to eq([[date, 1000, 1000]])
    end
  end

  describe '#withdraw' do
    it 'enables account to withdraw funds' do
      bank.deposit(1000)
      bank.withdraw(500)
      expect(bank.balance).to eq(500)
    end

    it 'adds date to each withdrawal' do
      bank.deposit(2000)
      bank.withdraw(1000)
      expect(bank.transactions).to eq([[date, 2000, 2000],[date, -1000, 1000]])
    end
  end
end
