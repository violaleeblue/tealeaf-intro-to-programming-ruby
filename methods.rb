puts "exercise 1"
def greet(name)
  puts "Hello " + name + "!"
end
puts greet('Mary')

puts "exercise 2"
puts "the integer 2"
puts "nil"
puts "Joe"
puts "the string four"
puts "nil"

puts "exercise 3"
def multiply(num1, num2)
  return num1 * num2
end
puts "multiplying 4 times 5 is " + multiply(4,5).to_s

puts "exercise 4"
puts "it prints nothing, because the return occurs before the puts"

puts "exercise 5"
def scream(words)
  words = words + "!!!!"
  puts words
end
scream("woo")
puts "it returns nil"

puts "exercise 6"
puts "two arguments were expected to the function, but only one was provided"