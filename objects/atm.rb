#!/usr/bin/env ruby

puts 'Welcome to Only Bank'
count = 0

def terminate
  puts 'See teller to get your card back.'
  exit
end

# loop do
#   print 'Please enter your pin: '
#   pin = gets.chomp.to_i
#   if pin == 1234
#     break
#   else
#     puts'Incorrect pin.'
#     count += 1
#     terminate if count >= 3
#   end
# end

class Atm
  
  def initialize
    @total = 2432.00
    format('%.2f', @total)
  end
  
  def check_balance
    puts "Your total balance is $#{format('%.2f', @total)}"
  end
  
  def deposit(deposit_ammount)
    @total += deposit_ammount
    puts "Your new balance is: $#{format('%.2f', @total)}"
  end
  
  def withdrawal(withdrawal_ammount)
    @total += withdrawal_ammount
    puts "Your new balance is: $#{format('%.2f', @total)}"
  end

  def return_card
    puts 'Thank you for banking with Only Bank'
    exit
  end
end

transaction = Atm.new

puts 'What do you want to do'
#command = gets.chomp
transaction.check_balance
transaction.deposit(200.25)
transaction.withdrawal(345.23)
transaction.return_card
    
