puts "Exercise One"
puts "what is your name?"
name = gets.chomp
puts "Hello, " + name + "!"

puts "Exercise Two"
def ages(start)
  puts "In ten years you will be " + (start + 10).to_s
  puts "In twenty years you will be " + (start + 20).to_s
  puts "In thirty years you will be " + (start + 30).to_s
  puts "In forty years you will be " + (start + 40).to_s
end
puts "what is your age?"
age = gets.chomp.to_i
ages(age)

puts "exercise 3"
10.times do
  puts name
end

puts "exercise 4"
puts "what is your first name?"
firstname = gets.chomp
puts "what is your last name?"
lastname = gets.chomp
puts "Hello, " + firstname + " " + lastname + "!"

puts "exercise 5"
puts "first program prints 3. second program throws out of scope error"

puts "exercise 6"
puts "shoes was never defined or was defined out of scope"