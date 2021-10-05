require 'account'

describe Account do

  let(:account) { described_class.new }
  let(:date) { Time.now.strftime("%d/%m/%Y") }
  let(:bank_statement_printer_instance_dbl) { double(:bank_statement_printer_instance) }
  let(:transaction_instance_dbl) { double(:transaction_instance_dbl) }
  let(:credit_transaction_dbl) { double(:credit_transaction_dbl, { date: date, credit: "£500.00", debit: "", balance: "£500.00" }) }
  let(:debit_transaction_dbl) { double(:debit_transaction_dbl, { date: date, credit: "", debit: "£65.00", balance: "£435.00" }) }

  describe '#credit' do
    it 'raises error if credit is not a Float or Integer' do
      expect { account.credit("1000", transaction_instance_dbl) }.to raise_error("You are not entering a correct monetary amount.")
    end

    it 'updates the account history with a credit transaction' do
      expect(transaction_instance_dbl).to receive(:credit).with(500, "£500.00").and_return(credit_transaction_dbl)
      account.credit(500, transaction_instance_dbl)
    end

    it 'updates the balance after depositing money into the account' do
      allow(transaction_instance_dbl).to receive(:credit).with(500, "£500.00")
      expect(account.credit(500, transaction_instance_dbl)).to eq("£500.00")
    end
  end

  describe '#debit' do

    it 'raises error if debit is not a Float or Integer' do
      expect { account.credit("1000", transaction_instance_dbl) }.to raise_error("You are not entering a correct monetary amount.")
    end

    it 'raises error if trying to debit more money than currently available in the balance' do
      expect { account.debit(1, transaction_instance_dbl) }.to raise_error("Your account does not currently have that much money.")
    end

    it 'updates the account history with a debit transaction' do
      allow(transaction_instance_dbl).to receive(:credit).with(500, "£500.00").and_return(credit_transaction_dbl)
      account.credit(500, transaction_instance_dbl)
      expect(transaction_instance_dbl).to receive(:debit).with(65, "£435.00").and_return(debit_transaction_dbl)
      account.debit(65, transaction_instance_dbl)
    end

    it 'updates the account balance after withdrawing money from the account' do
      allow(transaction_instance_dbl).to receive(:credit).with(500, "£500.00")
      account.credit(500, transaction_instance_dbl)
      allow(transaction_instance_dbl).to receive(:debit).with(65, "£435.00")
      expect(account.debit(65, transaction_instance_dbl)).to eq("£435.00")
    end
  end

  describe '#account_statement' do
    it 'outputs the account transaction history statement' do
      allow(transaction_instance_dbl).to receive(:credit).with(500, "£500.00")
      account.credit(500, transaction_instance_dbl)
      expect(bank_statement_printer_instance_dbl).to receive(:print_statement).with([transaction_instance_dbl])
      account.account_statement(bank_statement_printer_instance_dbl)     
    end
  end

end
