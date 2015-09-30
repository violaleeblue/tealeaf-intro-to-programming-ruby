puts "question 1"
flintstones = ["Fred", "Barney", "Wilma", "Betty", "BamBam", "Pebbles"]
flintstones = %w("Fred", "Barney", "Wilma", "Betty", "BamBam", "Pebbles")

puts "question 2"
flintstones = ["Fred", "Barney", "Wilma", "Betty", "BamBam", "Pebbles"]
flintstones.push("Dino")

puts "question 3"
flintstones = ["Fred", "Barney", "Wilma", "Betty", "BamBam", "Pebbles"]
flintstones.push("Dino", "Hoppy")

puts "question 4"
advice = "Few things in life are as important as house training your pet dinosaur."
advice = advice.slice!(/house(.)*$/)
p advice

puts "question 5"
statement = "The Flintstones Rock!"
num = statement.count('t')
puts num

puts "question 6"
title = "Flintstone Family Members"
title.center(40)
