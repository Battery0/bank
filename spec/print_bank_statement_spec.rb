require 'print_bank_statement'

describe PrintBankStatement do

  let(:print_bank_statement) { described_class.new }
  let(:account_double) { double("account double") }

  describe '#print_statement' do
    it 'should print the bank statement required headers' do
      expect(print_bank_statement.print_statement(account_double)).to eq("date || credit || debit || balance")
    end
  end

end