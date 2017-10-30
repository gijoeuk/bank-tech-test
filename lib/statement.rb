class Statement
  attr_reader :transactions

  def initialize
    @transactions = []
  end

  def print_transactions
    @transactions.each{|i| return i.date.to_s + "||" + i.amount.to_s + "||" + i.balance.to_s}
  end
end
