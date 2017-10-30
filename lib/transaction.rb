require './lib/statement.rb'

class Transaction
  attr_reader :date, :amount, :balance
  def initialize(amount, balance)
    @date = Date.new.strftime("%D")
    @amount = amount
    @balance = balance
  end
end
