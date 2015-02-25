#!/usr/bin/env ruby

class CashRegister

  def total
    format('%.2f', @total)
  end

  def initialize
    @total = 0.00
  end

  def purchase(purcase_ammount)
    format('%.2f', @total += purcase_ammount)
  end

  def pay(pay_ammount)
    @total -= pay_ammount
    if @total > 0
      puts "Your new total is $#{format('%.2f', @total)}"
    else
      puts "Your change is $#{format('%.2f', @total.abs)}"
      @total = 0.0
  end
  end
end

register = CashRegister.new
puts register.total
puts register.purchase(3.78)
puts register.purchase(5.22)
puts register.total
register.pay(5.00)
puts register.total
register.pay(5.00)
puts register.total
