class Account

  START_BALANCE = 0

  def initialize
    @balance = START_BALANCE
  end

  def deposit(amount)
    raise "You are not entering a correct monetary amount." if (amount.class != Integer) &&
    (amount.class != Float)

    @balance += amount

  end

  def withdraw(amount)
    raise "Your account does not currently have that much money." if @balance < amount

    @balance -= amount
  end

  def show_balance
    "£#{'%.2f' % @balance}"
  end

end
