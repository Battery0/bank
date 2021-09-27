require 'account'

describe Account do

  let(:account) { described_class.new }

  describe '#deposit' do
    it 'adds £500 to the account balance when depositing £500' do
      account.deposit(500)
      expect(account.show_balance).to eq("£500")
    end
  end


  # describe '#deposit' do
  #   it 'withdrawing £500 from the account deducts £500 from the balance' do
  #     account.withdraw(500)
  #     # expect(account.show_balance).to eq('£'500)
  #   end
  # end


end