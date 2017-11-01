class Statement
  attr_reader :transactions

  def initialize
    @transactions = []
  end

  def header
    "date || credit || debit || balance\n"
  end

  def transactions_log
    trans = ''
    @transactions.reverse.each { |i| trans += "#{i.date}|| #{i.credit} || #{i.debit} || #{i.balance}\n" }
    trans
  end

  def print_transactions
    header + transactions_log
  end
end
