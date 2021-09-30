require 'transaction'

describe Transaction do

  let(:transaction) { described_class.new }


  let(:date) { Time.now.strftime("%d/%m/%Y") }
  let(:credit) { "£500.00" }
  let(:balance_credit) { "£500.00" }
  let(:debit) { "£65.00" }
  let(:balance_debit) { "£435.00" }




  describe '#credit_transaction' do
    it 'creates a transaction record when the account is credited' do
      # expect(transaction.credit(500, '£%.2f' % 500)).to eq([date, credit, "", balance_credit])
      expect(transaction.credit(500, '£%.2f' % 500)).to eq({ date: date, credit: credit, debit: "", current_balance: balance_credit })
    end
  end

  describe '#debit_transaction' do
    it 'creates a transaction record when the account is debited' do
      # expect(transaction.debit(65, '£%.2f' % 435.00)).to eq([date, "", debit, balance_debit])
      expect(transaction.debit(65, '£%.2f' % 435.00)).to eq({ date: date, credit: "", debit: debit, current_balance: balance_debit })
    end
  end

end
