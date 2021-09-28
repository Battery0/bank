# require 'account'

# describe Account do

#   let(:account) { described_class.new }
#   let(:date_of_transaction) { Time.now.strftime("%d/%m/%Y") }
#   let(:credit) { ('£%.2f' % 500) }
#   let(:credit_balance) { ('£%.2f' % 500) }
#   let(:debit) { ('£%.2f' % 65) }
#   let(:debit_balance) { ('£%.2f' % 435) }

#   describe '#credit' do

#     it 'raises error if credit is not a Float or Integer' do
#       expect { account.credit("1000") }.to raise_error("You are not entering a correct monetary amount.")
#     end

#     it 'updates the account history with a credit transaction' do
#       account.credit(500)
#       expect(account.transaction_history).to include([date_of_transaction, credit, "", credit_balance])
#     end

#     it 'shows the correct account balance after depositing money into the account' do
#       expect(account.credit(500)).to eq(credit_balance)
#     end
#   end

#   describe '#debit' do
#     it 'raises error if trying to debit more money than currently available in the balance' do
#       expect { account.debit(1) }.to raise_error("Your account does not currently have that much money.")
#     end

#     it 'updates the account history with a debit transaction' do
#       account.credit(500)
#       account.debit(65)
#       expect(account.transaction_history).to include([date_of_transaction, "", debit, debit_balance])
#     end

#     it 'shows the correct account balance after withdrawing money from the account' do
#       account.credit(500)
#       expect(account.debit(65)).to eq(debit_balance)
#     end
#   end

# end
