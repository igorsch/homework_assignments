require_relative '../../lib/cash_register'

describe CashRegister do
  it 'should be cash register' do
    expect(subject).to be_a(CashRegister)
  end

  describe '#total' do
    it 'should have initial total of 0.00' do
      expect(subject.total).to eq(0.00)
    end
  end

  describe '#purchase(amount)' do
    it 'should add amount to balance' do
      expect(subject.purchase(10)).to eq(10.00)
    end
  end

  describe '#pay(amount)' do
    context 'for payment larger than current balance' do
      it 'should subtract amount from balance, and print change amount' do
        subject.purchase(10)
        expect(subject.pay(20)).to eq('Your change is $10.00')
      end
    end

    context 'for payment less than current balance' do
      it 'should subtract amount from balance, and print new balance.' do
        subject.purchase(10)
        expect(subject.pay(6)).to eq('Your new total is $4.00')
      end
    end
  end
end
