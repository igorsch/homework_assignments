#!/usr/bin/env ruby


def formatted_output(line, offset='-')
  line.center(42, offset)
end

system('clear')
puts '-' * 42
puts formatted_output('Welcome to Only Bank')
puts '-' * 42
count = 0

def terminate
  puts ' Your card was confiscated. '.center(42, '*')
  exit
end

loop do
  print 'Please enter your pin (Hint: 1234): '
  pin = gets.chomp.to_i
  if pin == 1234
    break
  else
    system('clear')
    puts formatted_output('Incorrect pin.')
    count += 1
    terminate if count >= 3
  end
end

system('clear')

class Atm
  
  def initialize
    @total = rand(2000) + 2000
    format('%.2f', @total)
  end
  
  def check_balance
    puts "Your account balance is $#{format('%.2f', @total)}"
  end
  
  def deposit(deposit_amount)
    @total += deposit_amount
    puts "Your new balance is: $#{format('%.2f', @total)}"
  end
  
  def withdrawal(withdrawal_amount)
    if withdrawal_amount > @total
      system('clear')
      puts 'Non sufficient funds'
      puts "You have $#{format('%.2f', @total)} in your account."
    else
      @total -= withdrawal_amount
      puts "Your new balance is: $#{format('%.2f', @total)}" 
    end
  end

  def return_card
    puts '-' * 42
    puts ' Thank you for banking with Only Bank '.center(42, '-')
    puts ' Have a nice day '.center(42, '-')
    puts '-' * 42
    exit
  end
  
  
end

transaction = Atm.new

loop do
puts formatted_output('')
puts formatted_output('Select an option:')
puts formatted_output('For Account balance press 1')
puts formatted_output('To make a deposit   press 2')
puts formatted_output('To withdraw cash    press 3')
puts formatted_output('To return your card press 4')
puts formatted_output('-' * 42)

  responce = gets.chomp.to_i
  if ![1, 2, 3, 4].include? responce
    system('clear')
    puts 'Enter a valid option.'
  elsif responce == 1
    system('clear')
    transaction.check_balance
  elsif responce == 2
    system('clear')
    print 'Enter your deposit amount: $'
    d_amount = gets.chomp.to_f
    transaction.deposit(d_amount)
  elsif responce == 3
    system('clear')
    print 'How much do you want to withdraw? $'
    w_amount = gets.chomp.to_f
    transaction.withdrawal(w_amount)
  else
    system('clear')
    transaction.return_card
  end
end
