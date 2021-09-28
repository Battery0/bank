require 'account'

describe Account do

  let(:account) { described_class.new }

  describe '#deposit' do
    it 'adds £500 to the account balance when depositing £500' do
      account.deposit(500)
      expect(account.show_balance).to eq("£500.00")
    end

    it 'raises error if deposit is not a Float or Integer' do
      expect{ account.deposit("1000") }.to raise_error("You are not entering a correct monetary amount.")
    end
  end

  describe '#withdraw' do
    it 'withdrawing £100.50 from the account deducts £100.50 from the total balance' do
      account.deposit(500)
      account.withdraw(100.50)
      expect(account.show_balance).to eq('£399.50')
    end

    it 'raises error if trying to withdraw more money than currently available in the balance' do
      expect{ account.withdraw(1) }.to raise_error("Your account does not currently have that much money.")
    end
  end


end
