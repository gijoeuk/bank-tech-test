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
    update_statement
  end

  def withdraw(amount)
    @balance -= amount
    @transaction = Transaction.new(-amount, @balance)
    update_statement
  end

  def print_statement
    "date || credit || debit || balance\n" + @statement.print_transactions
  end

private

  def update_statement
    @statement.transactions << @transaction
  end
end
