require "logger"

class BankAccount
  attr_accessor :name
  attr_reader :logger, :transactions

  def initialize(name)
    @name = name
    @transactions = []
    @logger = Logger.new("account.txt")
  end

  def deposite(amount)
    logger.info "[#{name}] Deposite #{amount}"
    transactions.push(amount)
  end

  def withdraw(amount)
    logger.info("[#{name}] Withdrew #{amount}")
    transactions.push(-amount)
  end
end

account = BankAccount.new("Jason")
account.deposite 100
account.withdraw 50
