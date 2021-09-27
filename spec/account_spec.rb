require 'account'

describe Account do

  let(:account) { described_class.new }

  describe '#deposit' do
    it 'adds £500.00 to the account balance when depositing £500.00' do
      account.deposit(500.00)
      expect(account.show_balance).to eq("£500.00")
    end

    it 'raises error if deposit is not a Float' do
      expect{ account.deposit("1000") }.to raise_error("You are not entering a correct monetary amount.")
    end

  end

  describe '#withdraw' do
    it 'withdrawing £250.00 from the account deducts £500.00 from the balance' do
      account.deposit(500.00)
      account.withdraw(500.00)
      expect(account.show_balance).to eq('£0.00')
    end

    it 'raises error if trying to withdraw more money than currently in balance' do
      expect{ account.withdraw(1.00) }.to raise_error("Your balance does not currently have that much money.")
    end
  end


end