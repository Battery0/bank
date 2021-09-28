# class Account

#   START_BALANCE = 0

#   def initialize
#     @balance = START_BALANCE
#     @transaction_records = []
#   end

#   def credit(amount)
#     raise "You are not entering a correct monetary amount." if (amount.class != Integer) &&
#     (amount.class != Float)

#     @balance += amount
#     credit_transaction(amount)
#     balance
#   end

#   def debit(amount)
#     raise "Your account does not currently have that much money." if @balance < amount

#     @balance -= amount
#     debit_transaction(amount)
#     balance
#   end

#   def transaction_history
#     @transaction_records
#   end
  
#   private

#   def credit_transaction(credit_amount)
#     @transaction_records << [date_of_transaction, '£%.2f' % credit_amount, "", balance]
#   end

#   def debit_transaction(debit_amount)
#     @transaction_records << [date_of_transaction, "", '£%.2f' % debit_amount, balance]
#   end

#   def balance
#     '£%.2f' % @balance
#   end

#   def date_of_transaction
#     Time.now.strftime("%d/%m/%Y")
#   end

# end
