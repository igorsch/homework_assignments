#!/usr/bin/env ruby

class CashRegister

  attr_reader :total

  def initialize
    @total = 0.0
  end

  def purchase(purcase_ammount)
    @total += purcase_ammount
  end

  def pay(pay_ammount)
    @total -= pay_ammount
    print "Your change is $#{@total}"
  end
end

register = CashRegister.new
puts register.total
puts register.purchase(3.78)
puts register.purchase(5.22)
puts register.pay(5.00)
puts register.total
puts register.total
