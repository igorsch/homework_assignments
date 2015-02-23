#!/usr/bin/env ruby

def bottle_text(n)
  if n > 1
    "#{n} bottles"
  elsif n == 1
    "#{n} bottle"
  else
    'no more bottles'
  end
end

def sing_a_verse(number_of_bottles)
  print "#{bottle_text(number_of_bottles)} of beer on the wall,"
  puts " #{bottle_text(number_of_bottles)} of beer."
  number_of_bottles -= 1
  print 'Take one down and pass it around,'
  puts " #{bottle_text(number_of_bottles)} of beer on the wall.\n\n"
  sing_a_verse(number_of_bottles) if number_of_bottles > 0
end

sing_a_verse(99)

puts 'No more bottles of beer on the wall, no more bottles of beer.'
puts 'Go to the store and buy some more, 99 bottles of beer on the wall.'
