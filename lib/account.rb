class Account

  START_BALANCE = 0

  def initialize
    @balance = START_BALANCE
  end

  def deposit(amount)
    raise "You are not entering a correct monetary amount." if amount.class != Float

    @balance += amount
  end

  def withdraw(amount)
    raise "Your balance does not currently have that much money." if @balance < amount

    @balance -= amount
  end

  def show_balance
    "£#{'%.2f' % @balance}"
  end

end

# acc = Account.new
# p acc.deposit(500)
# p acc.show_balance