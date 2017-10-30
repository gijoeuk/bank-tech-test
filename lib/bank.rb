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
    @statement.transactions << @transaction
  end

  def withdraw(amount)
    @balance -= amount
    @transaction = Transaction.new(-amount, @balance)
    @statement.transactions << @transaction
  end

  def print_statement
    'date || credit || debit || balance' + @statement.print_transactions
  end
end
