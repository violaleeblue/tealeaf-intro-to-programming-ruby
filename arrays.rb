puts "exercise 1"
def find_num(num)
  arr = [1,2,5,6,8,9]
  answer = num.to_s + " was not there, sorry"
  arr.each { |x|
    if x == num
      answer = num.to_s + " is in the array!"
      break
    end
  }
  puts answer
end
puts "enter a number to find"
number = gets.chomp.to_i
find_num(number)

puts "exercise 2"
puts '[["b", 1], ["b", 2], ["b", 3], ["a", 1], ["a", 2], ["a", 3]]'
puts "first is [b, 1], last of first is 1, so it returns 1"
puts '[["b", [1, 2, 3]], ["a", [1, 2, 3]]]'
puts "first is [b, [1,2,3], last of first is [1,2,3] so it returns [1,2,3]"

puts "exercise 3"
arr = [["test", "hello", "world"],["example", "mem"]]
puts arr[1][0]

puts "exercise 4"
puts "3"
puts "error, that doesn't mean anything"
puts "8"

puts "exercise 5"
puts "e"
puts "T"
puts "A"

puts "exercise 6"
puts "it's looking for a variable at the index margaret. it should be looking for a variable at the index 3 (hashes use strings as indices)"

puts "exercise 7"
arr = [2, 4, 6, 8, 10]
doublearr = arr.map {|num|
  num += 2
}
p arr
p doublearr