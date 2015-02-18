#!/usr/bin/env ruby

practice_string = 'this is a string to practice with'
puts practice_string
puts practice_string.capitalize
puts practice_string.upcase
puts practice_string.capitalize.gsub('string', "'string'")
puts practice_string.capitalize.insert(10, "'").insert(17, "'")
puts "The string '#{practice_string}' has #{practice_string.length} characters"
puts practice_string.reverse
puts ((practice_string.byteslice(20..28)) * 3).chop + '!'
