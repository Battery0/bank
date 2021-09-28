require 'print_bank_statement'

describe PrintBankStatement do

  let(:print_bank_statement) { described_class.new }
  let(:headers) { ["date", "credit", "debit", "balance"] }
  let(:formatted_headers) { "date || credit || debit || balance" }
  let(:transaction_history) { [["#{Time.now.strftime("%d/%m/%Y")} || £500.00 ||  || £500.00"]] }
  let(:formatted_transaction_history) { "#{Time.now.strftime("%d/%m/%Y")} || £500.00 ||  || £500.00" }

  describe '#print_statement' do
    it 'should output formatted bank statement' do
      expect { print_bank_statement.print_statement(transaction_history) }.to output("#{formatted_headers}\n#{formatted_transaction_history}\n").to_stdout
    end
  end

end