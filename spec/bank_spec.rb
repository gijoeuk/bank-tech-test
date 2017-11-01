require 'bank'
require 'statement'

describe 'Bank' do
  let(:bank) { Bank.new }
  let(:date) { Date.new.strftime('%D') }
  let(:transaction) { double Transaction.new(1000, 1000) }

  describe '#initialize' do
    it 'initializes as instance of Bank' do
      expect(bank).to be_an_instance_of(Bank)
    end

    it 'initializes with a balance of 0' do
      expect(bank.balance).to eq(0)
    end

    it 'initializes with a new instance of Statement' do
      expect(bank.statement).to be_an_instance_of(Statement)
    end
  end

  describe '#deposit' do
    it 'enables account holder to deposit funds' do
      bank.deposit(1000)
      expect(bank.balance).to eq(1000.0)
    end
  end

  describe '#withdraw' do
    it 'enables account holder to withdraw funds' do
      bank.deposit(1000)
      bank.withdraw(500)
      expect(bank.balance).to eq(500.0)
    end
  end
end
