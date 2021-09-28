class PrintBankStatement

  def initialize
    @statement_headers = "date || credit || debit || balance"
  end

  def print_statement(account = Account.new)
    @statement_headers
  end

end
