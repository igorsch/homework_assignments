class CashRegister
  def total
    format('%.2f', @total).to_i
  end

  def initialize
    @total = 0.0
  end

  def purchase(amount)
    format('%.2f', @total += amount).to_i
  end

  def pay(amount)
    @total -= amount
    change = @total.abs
    if @total > 0
      "Your new total is $#{format('%.2f', @total)}"
    else
      @total = 0.0
      "Your change is $#{format('%.2f', change)}"
    end
  end
end

if __FILE__ == $PROGRAM_NAME
  transaction = CashRegister.new
  puts transaction.total
  puts transaction.purchase(10)
  puts transaction.pay(20)
  puts transaction.pay(20)
end
