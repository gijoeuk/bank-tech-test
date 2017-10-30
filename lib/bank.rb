require 'date'
require './lib/transaction.rb'

class Bank
  attr_reader :balance, :statement

  def initialize
    @balance = 0
    @statement = Statement.new
  end

  def deposit(amount)
    @balance += amount
    @transaction = Transaction.new(amount, @balance)
    @statement.transactions.push(@transaction.details)
  end

  def withdraw(amount)
    @balance -= amount
    @transaction = Transaction.new(-amount, @balance)
    @statement.transactions.push(@transaction.details)
  end

  def print_statement
    'date || credit || debit || balance'
  end
end
