class Statement
  attr_reader :transactions

  def initialize
    @transactions = []
  end

  def header
    puts "date || credit || debit || balance\n"
  end

  def transactions_log
    @transactions.each{|i| return "#{i.date} || #{i.credit} || #{i.debit}|| #{i.balance}\n"}
  end

  def print_transactions
    self.header
    self.transactions_log
  end
end
