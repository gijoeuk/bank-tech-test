require './lib/statement.rb'

class Transaction

  attr_reader :date, :credit, :debit, :balance

  def initialize(amount, balance)
    @date = Date.new.strftime("%D")
    @credit = ""
    @debit = ""
    update_credit_debit(amount)
    @balance = balance.to_f
  end

  private

  def update_credit_debit(amount)
    amount < 0 ? @debit = -amount.to_f : @credit = amount.to_f
  end
end
