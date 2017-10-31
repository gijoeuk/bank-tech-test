require 'Transaction'

describe 'Transaction' do
  let(:transaction) { Transaction.new(1000, 1000) }
  let(:date) { Date.new.strftime("%D") }
  describe '#initialize' do
    it 'initializes with a transaction date' do
      expect(transaction.date).to eq(date)
    end

    it 'initializes with a debit amount equal to empty string' do
      expect(transaction.debit).to eq("")
    end

    it 'initializes with a balance true at the time transaction was created' do
      expect(transaction.balance).to eq(1000.0)
    end

    it 'knows if amount is a credit or debit' do
      expect(transaction.credit).to eq(1000.0)
    end
  end
end
