class PrintBankStatement

  def initialize
    @statement_headers = ["date", "credit", "debit", "balance"]
  end

  def print_statement(account_transactions)
    statement = account_transactions.unshift(@statement_headers)
    statement.each do |element|
      puts element.join(" || ")
    end   
  end

end


# pbs = PrintBankStatement.new
# pbs.print_statement([["#{Time.now.strftime("%d/%m/%Y")}", "£500.00", "", "£500.00"]])
