require 'account'

describe Account do

  let(:account) { described_class.new }

  describe '#deposit' do
    it 'adds £500 to the account balance when depositing £500' do
      account.deposit(500)
      expect(account.show_balance).to eq("£500")
    end

    it 'raises error if deposit is not an Integer' do
      expect{ account.deposit("1000") }.to raise_error("You are not entering a correct amount.")
    end

  end

  describe '#withdraw' do
    it 'withdrawing £250 from the account deducts £500 from the balance' do
      account.deposit(500)
      account.withdraw(500)
      expect(account.show_balance).to eq('£0')
    end

    it 'raises error if trying to withdraw more money than currently in balance' do
      expect{ account.withdraw(1) }.to raise_error("Your balance does not currently have that much money.")
    end
  end


end