
require './lib/transaction.rb'

class Bank
  attr_reader :balance, :statement

  def initialize(transaction = Transaction, statement = Statement.new)
    @balance = 0
    @newmoney = transaction
    @statement = statement
  end

  def deposit(amount)
    @balance += amount
    @transaction = @newmoney.new(amount, @balance)
    update_statement
  end

  def withdraw(amount)
    @balance -= amount
    @transaction = @newmoney.new(-amount, @balance)
    update_statement
  end

  def print_statement
    @statement.print_transactions
  end

  private

  def update_statement
    @statement.transactions << @transaction
  end
end
