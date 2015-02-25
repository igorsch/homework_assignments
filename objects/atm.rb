#!/usr/bin/env ruby

system("clear")
puts 'Welcome to Only Bank'.center(40, '-')
count = 0

def terminate
  puts 'See teller to get your card back.'
  exit
end

loop do
  print 'Please enter your pin (Hint: 1234): '
  pin = gets.chomp.to_i
  if pin == 1234
    break
  else
    system("clear")
    puts'Incorrect pin.'.center(27, '-')
    count += 1
    terminate if count >= 3
  end
end

class Atm
  
  def initialize
    @total = 2432.00
    format('%.2f', @total)
  end
  
  def check_balance
    puts "Your accouunt balance is $#{format('%.2f', @total)}"
  end
  
  def deposit(deposit_ammount)
    @total += deposit_ammount
    puts "Your new balance is: $#{format('%.2f', @total)}"
  end
  
  def withdrawal(withdrawal_ammount)
    if withdrawal_ammount > @total
      system("clear")
      puts 'Non sufficient funds'.center(40, '`')
      puts "You have $#{format('%.2f', @total)} in your account.".center(40, ' ')
    else
      @total -= withdrawal_ammount
      puts "Your new balance is: $#{format('%.2f', @total)}" 
    end
  end

  def return_card
    puts ' Thank you for banking with Only Bank '.center(42, '*')
    puts ' Have a nice day '.center(42, '*')
    exit
  end
end

transaction = Atm.new

loop do
puts ''
puts 'Select an option:'.center(40, '*')
puts 'For Account balance press 1'.center(40)
puts 'To make a deposit   press 2'.center(40)
puts 'To withdraw cash    press 3'.center(40)
puts 'To return your card press 4'.center(40)
puts '*' * 40

  responce = gets.chomp.to_i
  if ![1, 2, 3, 4].include? responce
    system("clear")
    puts 'Enter a valit option.'
  elsif responce == 1
    system("clear")
    transaction.check_balance
  elsif responce == 2
    system("clear")
    print 'Enter your deposit amount: $ '
    d_amount = gets.chomp.to_f
    transaction.deposit(d_amount)
  elsif responce == 3
    system("clear")
    print 'How much do you want to withdraw? $'
    w_amount = gets.chomp.to_f
    transaction.withdrawal(w_amount)
  else
    system("clear")
    transaction.return_card
  end
end
