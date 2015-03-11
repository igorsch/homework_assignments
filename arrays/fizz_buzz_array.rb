#!/usr/bin/env ruby

original_array = (1..100).to_a
array = []
original_array.each do |n|
  if n % 3 == 0 && n % 5 == 0
    array.push('FizzBuzz')
  elsif n % 3 == 0
    array.push('Fizz')
  elsif n % 5 == 0
    array.push('Buzz')
  else
    array.push(n)
  end
end

puts array
