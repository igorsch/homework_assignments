#!/usr/bin/env ruby

main_array = (1..10).to_a
puts "#{main_array.join('...')}..."
puts "T-#{main_array.reverse.join(', ')}...  BLASTOFF!"
puts "The last element is #{main_array.last}"
puts "The first element is #{main_array.first}"
puts "The third element is #{main_array[2]}"
puts "The element with an index of 3 is #{main_array[3]}"
puts "The second from last element is #{main_array[-2]}"
puts "The first four elements are '#{(main_array.first(4)).join(', ')}'"
main_array.delete_if { |n| n > 4 && n < 8}
puts "If we delete 5, 6 and 7 from the array, we're left with [#{main_array.join(',')}]"
puts "If we add 5 at the beginning of the array, we're left with [#{(main_array.insert(0, 5)).join(',')}]" 
puts "If we add 6 at the end of the array, we're left with [#{(main_array.push(6)).join(',')}]" 
main_array.delete_if { |n| n <= 8}
puts "Only the elements #{main_array} are > 8." 
puts "If we remove all the elements, then the length of the array is #{main_array.clear.length}"
