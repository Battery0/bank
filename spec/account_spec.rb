require 'account'

describe Account do

  let(:account) { described_class.new }

  describe '#deposit' do
    it 'adds £500 to the account balance when depositing £500' do
      account.deposit(500)
      expect(account.show_balance).to eq("£500")
    end
  end


  describe 'withdraw' do
    it 'withdrawing £250 from the account deducts £500 from the balance' do
      account.deposit(500)
      account.withdraw(500)
      expect(account.show_balance).to eq('£0')
    end
  end


end