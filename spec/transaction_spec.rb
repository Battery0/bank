require 'transaction'

describe Transaction do

  let(:transaction) { described_class.new }
  let(:date) { Time.now.strftime("%d/%m/%Y") }

  describe '#credit_transaction' do
    it 'creates a transaction record when the account is credited' do
      expect(transaction.credit(500, "£500.00")).to eq({ date: date, credit: "£500.00", debit: "", balance: "£500.00" })
    end
  end

  describe '#debit_transaction' do
    it 'creates a transaction record when the account is debited' do
      expect(transaction.debit(65, "£435.00")).to eq({ date: date, credit: "", debit: "£65.00", balance: "£435.00" })
    end
  end

end
