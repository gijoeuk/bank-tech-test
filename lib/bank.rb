require 'date'

class Bank
  attr_reader :balance, :transactions

  def initialize
    @balance = 0
    @transactions = []
  end

  def deposit(amount)
    @balance += amount
    @transactions.push([Date.new, amount])
  end

  def withdraw(amount)
    @balance -= amount
    @transactions.push([Date.new, -amount])
  end
end
