class Account

  START_BALANCE = 0

  def initialize
    @balance = START_BALANCE
    @transaction_records = []
  end

  def deposit(amount)
    raise "You are not entering a correct monetary amount." if (amount.class != Integer) &&
    (amount.class != Float)

    @balance += amount
    credit_transaction(amount)
  end

  def withdraw(amount)
    raise "Your account does not currently have that much money." if @balance < amount

    @balance -= amount
    debit_transaction(amount)
  end

  def transaction_history
    @transaction_records
  end





  private

  def credit_transaction(credit_amount)
    @transaction_records << [date, ('£%.2f' % credit_amount), "", balance]
  end

  def debit_transaction(debit_amount)
    @transaction_records << [date, "", ('£%.2f' % debit_amount), balance]
  end

  def balance
    '£%.2f' % @balance
  end

  def date
    Time.now.strftime("%d/%m/%Y")
  end

end


# acc = Account.new
# acc.deposit(500)
# p acc.transaction_history