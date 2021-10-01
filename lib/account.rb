require_relative './bank_statement_printer'
require_relative './transaction'

class Account

  START_BALANCE = 0

  def initialize
    @balance = START_BALANCE
    @transaction_records = []
  end

  def credit(amount, transaction = Transaction.new)
    raise "You are not entering a correct monetary amount." if (amount.class != Integer) &&
    (amount.class != Float)

    @balance += amount
    transaction.credit(amount, balance)
    store_record(transaction)
    balance
  end

  def debit(amount, transaction = Transaction.new)
    raise "Your account does not currently have that much money." if @balance < amount

    @balance -= amount
    transaction.debit(amount, balance)
    store_record(transaction)
    balance
  end

  def account_statement(statement = BankStatementPrinter.new)
    statement.print_statement(transaction_history)
  end

  private

  def store_record(transaction)
    @transaction_records << transaction
  end

  def transaction_history
    @transaction_records
  end

  def balance
    '£%.2f' % @balance
  end

end
