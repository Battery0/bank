require 'account'

describe Account do

  let(:account) { described_class.new }
  let(:date) { Time.now.strftime("%d/%m/%Y") }
  let(:credit) { "£500.00" }
  let(:balance_credit) { "£500.00" }
  let(:debit) { "£65.00" }
  let(:balance_debit) { "£435.00" }
  # let(:print_bank_statement_dbl) { double("print statement double", { print_statement: "date || credit || debit || balance" }) }
  let(:formatted_statement) { "#{date} || £500.00 ||  || £500.00" }
  # let(:credit_transaction_dbl) { double("transaction double", { credit: { date: date, credit: credit, debit: "", balance: balance_credit } }) }
  # let(:debit_transaction_dbl) { double("transaction double", { debit: { date: date, credit: "", debit: debit, balance: balance_debit } }) }





  let(:bank_statement_printer_instance_dbl) { double(:bank_statement_printer_instance) }
  let(:transaction_instance_dbl) { double(:transaction_instance_dbl) }


  describe '#credit' do
    it 'raises error if credit is not a Float or Integer' do
      expect { account.credit("1000", transaction_instance_dbl) }.to raise_error("You are not entering a correct monetary amount.")
    end

    it 'updates the account history with a credit transaction' do
      allow(transaction_instance_dbl).to receive(:credit).with(500, "£500.00")
      account.credit(500, transaction_instance_dbl)
    end

    it 'shows the correct account balance after depositing money into the account' do
      allow(transaction_instance_dbl).to receive(:credit).with(500, "£500.00")
      expect(account.credit(500)).to eq("£500.00")
    end
  end

  # describe '#debit' do
  #   it 'raises error if trying to debit more money than currently available in the balance' do
  #     expect { account.debit(1) }.to raise_error("Your account does not currently have that much money.")
  #   end

  #   it 'updates the account history with a debit transaction' do
  #     expect(credit_transaction_dbl).to receive(:credit).with(500, "£500.00")
  #     account.credit(500, credit_transaction_dbl)
  #     expect(debit_transaction_dbl).to receive(:debit).with(65, "£435.00")
  #     account.debit(65, debit_transaction_dbl)
  #   end

  #   it 'shows the correct account balance after withdrawing money from the account' do
  #     account.credit(500)
  #     expect(account.debit(65)).to eq(balance_debit)
  #   end
  # end

  describe '#account_statement' do
    it 'outputs the account transaction history statement' do
      allow(transaction_instance_dbl).to receive(:credit).with(500, "£500.00")
      account.credit(500, transaction_instance_dbl)
      expect(bank_statement_printer_instance_dbl).to receive(:print_statement).with([transaction_instance_dbl])
      account.account_statement(bank_statement_printer_instance_dbl)     
    end
  end

end
