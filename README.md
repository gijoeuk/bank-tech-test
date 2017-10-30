# bank-tech-test

Bank Tech Test

Planning stage 1

Nouns
  Bank
  Statement

Verbs
  Deposit
  Withdraw
  Balance
  Print (Statement)

As an account holder,
so that I can keep track of my money,
I want to create a bank account

As an account holder
so that I can keep my money safe
I want to add money to my account

As an account holder
so that I can access my funds
I want to withdraw money from my account

As an account holder
So that I can see my past transactions
I want to print a statement showing my transactions

Instructions;

To use this programme you will firstly need to open IRB in the command line and require './lib/bank.rb'

You can open a new bank account using the command 'bank = Bank.new'

The account will have a default balance of £0

You can add money to the account using bank.deposit(amount) and passing an integer in as the amount you wish to deposit

You can withdraw money to the account using bank.withdraw(amount) and passing an integer in as the amount you wish to withdraw

At any point you can check your balance using bank.balance

To generate a statement for all transactions use bank.statement
