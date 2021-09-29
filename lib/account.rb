require_relative './print_bank_statement'

class Account

  START_BALANCE = 0

  def initialize
    @balance = START_BALANCE
    @transaction_records = []
  end

  def credit(amount)
    raise "You are not entering a correct monetary amount." if (amount.class != Integer) &&
    (amount.class != Float)

    @balance += amount
    credit_transaction(amount)
    balance
  end

  def debit(amount)
    raise "Your account does not currently have that much money." if @balance < amount

    @balance -= amount
    debit_transaction(amount)
    balance
  end

  def transaction_history
    @transaction_records
  end

  def account_statement(statement = PrintBankStatement.new)
    statement.print_statement(transaction_history)
  end
  
  private

  def credit_transaction(credit_amount)
    @transaction_records << [date_of_transaction, money_format(credit_amount), "", balance]
  end

  def debit_transaction(debit_amount)
    @transaction_records << [date_of_transaction, "", money_format(debit_amount), balance]
  end

  def balance
    money_format(@balance)
  end

  def date_of_transaction
    Time.now.strftime("%d/%m/%Y")
  end

  def money_format(money)
    '£%.2f' % money
  end

end
