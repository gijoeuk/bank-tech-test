require 'bank'
require 'statement'
require 'date'

describe '#print_statement' do
  let(:bank) { Bank.new }
  let(:date) { Date.new.strftime('%D') }
  it 'enables account holder to print stament of all transactions' do
    bank.deposit(1000)
    bank.deposit(2000)
    bank.withdraw(500)
    expect(bank.print_statement).to eq("date || credit || debit || balance\n#{date}||  || 500.0 || 2500.0\n#{date}|| 2000.0 ||  || 3000.0\n#{date}|| 1000.0 ||  || 1000.0\n")
  end
end
