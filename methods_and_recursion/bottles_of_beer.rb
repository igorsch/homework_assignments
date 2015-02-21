#!/usr/bin/env ruby

number_of_bottles = 99

def num_bot(n)
  if n > 1
    "#{n} bottles"
  elsif n == 1
    "#{n} bottle"
  else
    'no more bottles'
  end 
  # "#{n} bottle#{n == 1 ? '' : 's'}"
end

while number_of_bottles > 0
  puts "#{num_bot(number_of_bottles)} of beer on the wall, #{num_bot(number_of_bottles)} of beer."
  puts "Take one down and pass it around, #{num_bot(number_of_bottles - 1)} of beer on the wall.\n\n"
  number_of_bottles -= 1
end

puts 'No more bottles of beer on the wall, no more bottles of beer.'
puts 'Go to the store and buy some more, 99 bottles of beer on the wall.'
