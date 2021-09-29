require 'transaction'

describe Transaction do

  let(:transaction) { described_class.new }


  let(:date_of_transaction) { Time.now.strftime("%d/%m/%Y") }
  let(:credit) { "£500.00" }
  let(:balance_credit) { "£500.00" }
  let(:debit) { "£65.00" }
  let(:balance_debit) { "£435.00" }




  describe '#credit_transaction' do
    it 'creates a transaction record when the account is credited' do
      expect(transaction.credit(500, '£%.2f' % 500)).to eq([date_of_transaction, credit, "", balance_credit])
    end
  end

end
