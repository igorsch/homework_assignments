#!/usr/bin/env ruby

def ask_question(question)
  puts question
  gets.chomp
end

adjective_one = ask_question('Give me an adjective:')
adjective_two = ask_question('Give me another adjective:')
noun_one = ask_question('Give me a noun:')
noun_two = ask_question('Give me another noun:')
noun_three = ask_question('Give me a plural noun:')
game = ask_question('Give me a game:')
noun_four = ask_question('Give me another plural noun:')
verb_one = ask_question("Give me a verb ending in 'ing':")
verb_two = ask_question("Give me another verb ending in 'ing':")
noun_five = ask_question('Give me another plural noun:')
verb_three = ask_question("Give me another verb ending in 'ing':")
noun_six = ask_question('Give me another noun:')
plant = ask_question('Give me a plant:')
body_part = ask_question('Give me a part of the body:')
place = ask_question('Give me a place:')
verb_four = ask_question("'Give me another verb ending in 'ing':")
adjective_three = ask_question('Give me another adjective:')
number = ask_question('Give me a number:')
noun_seven = ask_question('Give me another plural noun:')

puts "
A vacation is when you take a trip to some #{adjective_one} place
with your #{adjective_two} family. Usually you go to some place
that is near a/an #{noun_one} or up on a/an #{noun_two}.
A good vacation place is one where you can ride #{noun_three}
or play #{game} or go hunting for #{noun_four}. I like
to spend my time #{verb_one} or #{verb_two}.
When parents go on a vacation, they spend their time eating
three #{noun_five} a day, and fathers play golf, and mothers
sit around #{verb_three}. Last summer, my little brother
fell in a/an #{noun_six} and got poison #{plant} all
over his #{body_part}. My family is going to go to (the)
#{place}, and I will practice #{verb_four}. Parents
need vacations more than kids because parents are always very
#{adjective_three} and because they have to work #{number}
hours every day all year making enough #{noun_seven} to pay
for the vacation.
"
