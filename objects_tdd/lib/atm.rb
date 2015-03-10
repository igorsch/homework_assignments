class Atm
  attr_reader :balance

  def initialize
    @balance = 2000.00
    format('%.2f', @balance)
  end

  def check_balance
    "Your account balance is $#{format('%.2f', @balance)}"
  end

  def deposit(amount)
    @balance += amount
    "Your new balance is: $#{format('%.2f', @balance)}"
  end

  def withdrawal(amount)
    if amount > @balance.to_i
      'Non sufficient funds'
    else
      @balance -= amount
      "Your new balance is: $#{format('%.2f', @balance)}"
    end
  end

  def return_card
    'Thank you for banking with Only Bank'
  end
end

if __FILE__ == $PROGRAM_NAME
  atm = Atm.new
  puts atm.balance
  puts atm.check_balance
  puts atm.check_balance.class
  puts atm.withdrawal(100)
  puts atm.withdrawal(3100)
end
