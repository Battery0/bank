class PrintBankStatement

  def initialize
    @statement_headers = "date || credit || debit || balance"
  end

  def print_statement(account_transactions)
    formatted_statement = date_order(account_transactions)
    puts @statement_headers
    formatted_statement.each do |element|
      record = element.record.values
      puts record.join(" || ")
    end
  end

  private

  def date_order(account_transactions)
    account_transactions.reverse
  end

end
