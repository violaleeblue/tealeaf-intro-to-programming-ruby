puts "exercise 1"
puts "a do loop returns its input array unchanged"

puts "exercise 2"
loop do
  puts "enter a number to square. type STOP to stop."
  input = gets.chomp
  if input == 'STOP'
    break
  elsif input.respond_to?(:to_i)
    puts (input.to_i * input.to_i).to_s
  else
    puts "I don't know what to do with that input."
  end
end

puts "exercise 3"
arr = ["cat","dog","fish","bird","lizard"]
arr.each_with_index {|pet,index|
  puts "the number #{index} pet is #{pet}"
}

puts "exercise 4"
def count_to_zero(num)
  if num <= 0
    puts num.to_s
  elsif num > 0
    puts num.to_s
    num = num -1
    count_to_zero(num)
  end
end
count_to_zero(20)
count_to_zero(-5)
count_to_zero(3)