# require 'print_bank_statement'

# describe PrintBankStatement do

#   let(:print_bank_statement) { described_class.new }
#   #let(:account_double) { double("account double") }
#   let(:date_of_transaction) { Time.now.strftime("%d/%m/%Y") }
#   let(:transaction_history) { ["#{date_of_transaction} || £500.00 ||  || £500.00"] }


#   describe '#print_statement' do
#     it 'should output the required headers' do
#       expect(print_bank_statement.print_statement(transaction_history)).to eq("date_of_transaction || £500.00 ||  || £500.00")
#     end

#     # it 'should output the bank statement transaction history' do
#     #   expect(print_bank_statement.print_statement).to eq("#{date_of_transaction} || £500.00 ||  || £500.00")
#     # end
#   end

# end