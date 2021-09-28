require_relative './account'

class PrintBankStatement

  def initialize
    @statement_headers = "date || credit || debit || balance"
  end

  def print_statement(account_transactions)
    @statement_headers
    # account.transaction_history
  end

end


# pbs = PrintBankStatement.new
# p pbs.print_statement

