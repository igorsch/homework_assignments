#!/usr/bin/env ruby

(1..100).each do |number|
   if number % 3 == 0  && number % 5 == 0
     puts "FizzBuzz"
     `say FizzBuzz`
     sleep(0.1)
   elsif number % 3 == 0
     puts 'Fizz'
     `say Fizz`
     sleep(0.1)
  elsif number % 5 == 0
    puts "Buzz"
     `say Buzz`
    sleep(0.1)
  else
    puts number
     `say #{number}`
    sleep(0.1)
  end
end
