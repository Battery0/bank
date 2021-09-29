class PrintBankStatement

  def initialize
    @statement_headers = ["date", "credit", "debit", "balance"]
  end

  def print_statement(account_transactions)
    statement = account_transactions.unshift(@statement_headers)
    statement.each do |element|
      puts element.join(" || ")
      # puts element
    end   
  end

end
