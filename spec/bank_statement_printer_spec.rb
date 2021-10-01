require 'bank_statement_printer'

describe BankStatementPrinter do

  let(:print_bank_statement) { described_class.new }
  let(:statement_header) { "date || credit || debit || balance" }
  let(:date) { Time.now.strftime("%d/%m/%Y") }
  let(:transaction_dbl) { double("transaction double", { record: { date: date, credit: "£500.00", debit: "", balance: "£500.00" } }) }
  let(:transaction_history) { [transaction_dbl] }
  let(:formatted_statement) { "#{date} || £500.00 ||  || £500.00" }

  describe '#print_statement' do
    it 'should output formatted bank statement' do
      expect { print_bank_statement.print_statement(transaction_history) }.to output("#{statement_header}\n#{formatted_statement}\n").to_stdout
    end
  end

end
