class Transaction

  def initialize
    @transaction_record = {}
  end

  def credit(amount, balance)
    @transaction_record = { date: date, credit: money_format(amount), debit: "", balance: balance }
  end

  def debit(amount, balance)
    @transaction_record = { date: date, credit: "", debit: money_format(amount), balance: balance }
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
