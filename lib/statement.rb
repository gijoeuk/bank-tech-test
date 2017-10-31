class Statement
  attr_reader :transactions

  def initialize
    @transactions = []
  end

  def header
    return "date || credit || debit || balance\n"
  end

  def transactions_log
    to_return = ""
    @transactions.reverse.each{|i| to_return += "#{i.date}|| #{i.credit} || #{i.debit} || #{i.balance}\n"}
    to_return
  end

  def print_transactions
    header + transactions_log
  end
end
