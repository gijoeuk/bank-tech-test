require 'date'

class Transaction
  attr_reader :date, :amount, :balance
  def initialize(amount,balance)
    @date = Date.new
    @amount = amount
    @balance = balance
  end
end