require 'date'
require './lib/transaction.rb'

class Bank
  attr_reader :balance, :transactions

  def initialize
    @balance = 0
    @transactions = []
  end

  def deposit(amount)
    @balance += amount
    @transaction = Transaction.new(amount, @balance)
    @transactions.push(@transaction)
  end

  def withdraw(amount)
    @balance -= amount
    @transaction = Transaction.new(-amount, @balance)
    @transactions.push(@transaction)
  end

  def print_statement
    return 'date || credit || debit || balance'
  end
end
