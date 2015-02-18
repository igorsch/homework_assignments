#!/usr/bin/env ruby

puts 'this is a string to practice with'
puts 'this is a string to practice with'.capitalize
puts 'this is a string to practice with'.upcase
puts 'this is a string to practice with'.capitalize.gsub('string', "'string'")
# puts 'this is a string to practice with'.capitalize.insert(10, "'").insert(17, "'")
length = 'this is a string to practice with'.length
puts 'this is a string to practice with'.insert(0, "The string '").insert(45, "' has #{length} characters")
puts 'this is a string to practice with'.reverse
puts (('this is a string to practice with'.byteslice(20..28)) * 3).chop
