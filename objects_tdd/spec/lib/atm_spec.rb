require_relative '../../lib/atm'

describe Atm do
  it 'should be an atm' do
    expect(subject).to be_a(Atm)
  end

  describe '#balance' do
    it 'should show a balance of 2000.00' do
      expect(subject.balance).to be_between(2000.00, 4000.00)
    end
  end

  context 'initialized atm' do
    subject { Atm.new(2000) }
    describe '#check_balance' do
      it 'should return "Your account balance is $2000.00"' do
        expect(subject.check_balance).to eq('Your account balance is $2000.00')
      end
    end

    describe '#deposit(amount)' do
      it "should add amount to balance.
        And return 'Your new balance is: $2200.00'" do
        expect(subject.deposit(200)).to eq('Your new balance is: $2200.00')
      end
    end
  end

  describe '#withdrawal(amount)' do
    subject { Atm.new(2000) }
    context 'for withdrawal less than balance should return balance.' do
      it "should subtract amount from balance.
        And return 'Your new balance is: $1900.00'" do
        expect(subject.withdrawal(100)).to eq('Your new balance is: $1900.00')
      end
    end

    context 'for withdrawal greater than balance should raise an error.' do
      it "should subtract amount from balance.
        And return 'Non sufficient funds'
        Your balance is $2000.00" do
        expect(subject.withdrawal(3100)).to eq('Non sufficient funds
Your balance is $2000.00')
      end
    end
  end

  describe '#return_card' do
    it 'should return "Thank you for banking with Only Bank"' do
      expect(subject.return_card).to eq('Thank you for banking with Only Bank')
    end
  end
end
