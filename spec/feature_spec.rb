require 'account'

describe 'feature test' do

  let(:date) { Time.now.strftime("%d/%m/%Y") }

  it 'allows the user to credit and debit their account' do
    account = Account.new
    account.credit(50)
    account.credit(50.00)
    account.debit(50.00)
    account.credit(25)
    account.debit(32.00)
    expect(account.debit(23)).to eq("£20.00")
  end

  it 'prints a bank statement based on the transactions of the account' do
    expected_statement = 
    "date || credit || debit || balance\n"\
    "#{date} ||  || £27.99 || £1018.62\n"\
    "#{date} || £800.00 ||  || £1046.61\n"\
    "#{date} ||  || £56.73 || £246.61\n"\
    "#{date} || £53.34 ||  || £303.34\n"\
    "#{date} || £250.00 ||  || £250.00\n"

    account = Account.new
    account.credit(250)
    account.credit(53.34)
    account.debit(56.73)
    account.credit(800)
    account.debit(27.99)
    expect{ account.account_statement }.to output(expected_statement).to_stdout
  end

end
