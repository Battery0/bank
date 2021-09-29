require 'account'

describe Account do

  let(:account) { described_class.new }
  let(:date_of_transaction) { Time.now.strftime("%d/%m/%Y") }
  let(:credit) { "£500.00" }
  let(:balance_credit) { "£500.00" }
  let(:debit) { "£65.00" }
  let(:balance_debit) { "£435.00" }
  let(:print_bank_statement_dbl) { double("print statement double", { print_statement: "date || credit || debit || balance" }) }

  describe '#credit' do
    it 'raises error if credit is not a Float or Integer' do
      expect { account.credit("1000") }.to raise_error("You are not entering a correct monetary amount.")
    end

    it 'updates the account history with a credit transaction' do
      account.credit(500)
      expect(account.transaction_history).to include([date_of_transaction, credit, "", balance_credit])
    end

    it 'shows the correct account balance after depositing money into the account' do
      expect(account.credit(500)).to eq(balance_credit)
    end
  end

  describe '#debit' do
    it 'raises error if trying to debit more money than currently available in the balance' do
      expect { account.debit(1) }.to raise_error("Your account does not currently have that much money.")
    end

    it 'updates the account history with a debit transaction' do
      account.credit(500)
      account.debit(65)
      expect(account.transaction_history).to include([date_of_transaction, "", debit, balance_debit])
    end

    it 'shows the correct account balance after withdrawing money from the account' do
      account.credit(500)
      expect(account.debit(65)).to eq(balance_debit)
    end
  end

  describe '#account_statement' do
    it 'outputs the account transaction history statement' do
      account.credit(500)
      expect(account.account_statement(print_bank_statement_dbl)).to eq("date || credit || debit || balance")
    end
  end

end
