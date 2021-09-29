class Transaction


  def credit(credit_amount, balance)
    [date, money_format(credit_amount), "", balance]
  end



  def debit(debit_amount, balance)
    [date, "", money_format(debit_amount), balance]
  end








  private

  def date #for extraction - Transaction class
    Time.now.strftime("%d/%m/%Y")
  end

  def money_format(money) #MIGHT extract - Transaction class
    '£%.2f' % money
  end

end
