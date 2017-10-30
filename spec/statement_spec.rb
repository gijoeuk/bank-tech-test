require 'Statement'

describe Statement do
  let(:statement) { Statement.new }
  it 'initializes with an empty array of transactions' do
    expect(statement.transactions).to eq([])
  end
end
