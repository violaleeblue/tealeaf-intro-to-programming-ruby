puts "exercise 1"
puts "false"
puts "false"
puts "false"
puts "true"
puts "true"

puts "exercise 2"
def capitalize(str)
  if str.length > 10
    return str.upcase
  else
    return str
  end
end
puts capitalize("hi")
puts capitalize("hello there, computer user")

puts "exercise 3"
def identify(num)
  if num < 0
    return "num is smaller than zero, try again"
  elsif num <= 50
    return "num is between zero and 50"
  elsif num <= 100
    return "num is between 50 and 100"
  else
    return "num is greater than 100"
  end
end
puts "please enter a number between 0 and 100"
number = gets.chomp.to_i
puts identify(number)

puts "exercise 4"
puts "1): false"
puts "2): Did you get it right?"
puts "3): Alright now!"

puts "exercise 5"
def identify_case(num)
  case
  when num < 0
    puts num.to_s + " is smaller than zero, try again"
  when num <= 50
    puts num.to_s + " is between zero and 50"
  when num <= 100
    puts num.to_s + " is between 50 and 100"
  else
    puts num.to_s + " is greater than 100"
  end
end
puts "please enter a number between 0 and 100"
number = gets.chomp.to_i
puts identify_case(number)

puts "exercise 6"
puts "missing 'end' in if/else"
