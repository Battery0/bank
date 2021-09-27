class Account

  START_BALANCE = 0

  def initialize
    @balance = START_BALANCE
  end

  def deposit(amount)
    @balance += amount
  end

  def show_balance
    @balance
  end

end