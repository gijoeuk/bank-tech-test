require 'Bank'
require 'Statement'

describe 'Bank' do
  let(:bank) { Bank.new }
  let(:date) { Date.new}

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
      expect(bank.balance).to eq(1000)
    end
  end

  describe '#withdraw' do
    it 'enables account holder to withdraw funds' do
      bank.deposit(1000)
      bank.withdraw(500)
      expect(bank.balance).to eq(500)
    end
  end

  describe '#print_statement' do
    it 'enables account holder to print stament of all transactions' do
      bank.deposit(1000)
      bank.deposit(2000)
      bank.withdraw(500)
      p "transactions: #{bank.statement.transactions}"
      expect(bank.print_statement).to eq("date || credit || debit || balance
       #{date}|| || 500.00 || 2500.00
      #{date}|| 2000.00 || || 3000.00
      #{date}|| 1000.00 || || 1000.00")
    end
  end
end
