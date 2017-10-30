class Statement
  attr_reader :transactions

  def initialize
    @transactions = []
  end

  def print_transactions
    @transactions.each{|i|return "#{i.date} || #{i.credit} || #{i.debit}|| #{i.balance}"}
  end
end
