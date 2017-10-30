require 'Transaction'

describe 'Transaction' do
  let(:transaction) { Transaction.new(1000, 1000) }
  let(:date) { Date.new }
  describe '#initialize' do
    it 'initializes with a transaction date' do
      expect(transaction.date).to eq(date)
    end

    it 'initializes with a transaction amount equal to amount passed in' do
      expect(transaction.amount).to eq(1000)
    end

    it 'initializes with a balance amount equal to balance passed in' do
      expect(transaction.amount).to eq(1000)
    end
  end
end
