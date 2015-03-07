require_relative '../../lib/cash_register'

describe CashRegister do
  it 'should be cash register' do
    expect(subject).to be_a(CashRegister)
  end

  describe '#total' do
    it 'should have initial total of 0.0' do
      expect(subject.total).to eq(0.0)
    end
  end

  describe '#purchase(amount)' do
    it 'should add amount to balance' do
      expect(subject.purchase(10)).to eq(10.0)
    end
  end

  describe '#pay(amount)' do
    it 'should subtract amount from balance' do
      subject.purchase(10)
      expect(subject.pay(4)).to eq(6.0)
    end
  end
end
