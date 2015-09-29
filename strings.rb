puts "Exercise One"
puts "What is your first name?"
firstname = gets.to_s.strip
puts "What is your last name?"
lastname = gets.to_s.strip
puts "your whole name is " + firstname + " " + lastname

puts "Exercise Two"
puts "Enter your 4 digit number"
num = gets.to_i
thousands = num / 1000
hundreds = num % 1000 / 100
tens = num % 100 / 10
ones = num % 10
puts "Thousands is " + thousands.to_s + " and hundreds is " + hundreds.to_s + " and tens is " + tens.to_s + " and ones is " + ones.to_s

puts "Exercise Three"
movies = {
  "The Great Gatsby" => '2012',
  "Forrest Gump" => '2005',
  "The Lone Ranger" => '1935',
  "Sleepless In Seattle" => '1993'
}

movies.each {|title, date|
  puts "#{date}"
}

puts "Exercise Four"
date_arr = []
movies.each {|title,date|
  date_arr.push(date)
}
date_arr.each { | date |
  puts "#{date}"
}

puts "Exercise Five"
def factorial(num)
  total = 1
  while num > 1
    total = total * num
    num = num - 1
  end
  return total.to_s
end
puts "five factorial is " + factorial(5)
puts "six factorial is " + factorial(6)
puts "seven factorial is " + factorial(7)
puts "eight factorial is " + factorial(8)

puts "Exercise Six"
def squares(num)
  return num*num
end
puts "square of 2.5 is " + squares(2.5).to_s
puts "square of 3.24 is " + squares(3.24).to_s
puts "square of 5.67 is " + squares(5.67).to_s

puts "Exercise Seven"
puts "the developer forgot to close a curly brace"
