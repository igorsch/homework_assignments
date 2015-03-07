class CashRegister
  attr_reader :total

  def initialize
    @total = 0.0
  end

  def purchase(amount)
    @total += amount
  end

  def pay(amount)
    @total -= amount
  end
end

if __FILE__ == $PROGRAM_NAME
  transaction = CashRegister.new
  puts transaction.total
  puts transaction.purchase(10)
  puts transaction.pay(4)
end
