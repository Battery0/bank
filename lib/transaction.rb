class Transaction

  def initialize
    @transaction_record = {}
  end

  def credit(credit_amount, balance)
    @transaction_record = { date: date, credit: money_format(credit_amount), debit: "", current_balance: balance }
  end

  def debit(debit_amount, balance)
    @transaction_record = { date: date, credit: "", debit: money_format(debit_amount), current_balance: balance }
  end

  def record
    @transaction_record
  end

  private

  def date
    Time.now.strftime("%d/%m/%Y")
  end

  def money_format(money)
    '£%.2f' % money
  end

end
