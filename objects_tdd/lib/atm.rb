class Atm
  attr_reader :balance

  def initialize(balance = rand(2000.00) + 2000.00)
    @balance = balance
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
    if amount > balance.to_f
      output = "Non sufficient funds\n"
      output << "Your balance is $#{format('%.2f', @balance)}"
      output
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
