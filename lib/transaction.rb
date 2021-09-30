class Transaction





  def credit(credit_amount, balance)
    { date: date, credit: money_format(credit_amount), debit: "", current_balance: balance }
    # [date, money_format(credit_amount), "", balance]
  end

  def debit(debit_amount, balance)
    { date: date, credit: "", debit: money_format(debit_amount), current_balance: balance }
    # [date, "", money_format(debit_amount), balance]
  end






  private

  def date
    Time.now.strftime("%d/%m/%Y")
  end

  def money_format(money)
    '£%.2f' % money
  end

end
