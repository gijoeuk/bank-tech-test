require 'Transaction'

describe 'Transaction' do
  let( :transaction ){ Transaction.new(1000, 1000)}
  describe '#initialize' do
    it 'initializes with a transaction date' do
      expect(transaction.amount).to eq(1000)
    end
  end
end
