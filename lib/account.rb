class Account

  START_BALANCE = 0

  def initialize
    @balance = START_BALANCE
  end

  def deposit(amount)
    @balance += amount
  end

  def show_balance
    "£#{@balance}"
  end

end

acc = Account.new
p acc.deposit(500)
p acc.show_balance