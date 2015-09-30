puts "question 1"
str = "The Flintstones Rock!"
indent = ' '
10.times do |index|
  indent += indent
  p indent + str
end

puts "question 2"
statement = "The Flintstones Rock"
frequency = {}
statement.each_char {|c|
  key = c.upcase
  if !frequency.has_key?(key)
    frequency[key] = 1
  else
    frequency[key] = frequency[key]+1
  end
}
p frequency

puts "question 3"
puts "the value of 40 + 2 is " + (40 + 2).to_s

puts "question 4"
puts "1,3 would be output and the new array would be [3,4]"
puts "1,2 would be output and the new array would be [1,2]"

puts "question 5"
def factors(number)
  dividend = number
  divisors = []
  while dividend > 0 do
    divisors << number / dividend if number % dividend == 0
    dividend -= 1
  end
  divisors
end

puts "question 6"
test_arr = [1,2,3,4,5]
def rolling_buffer1(buffer, max_buffer_size, new_element)
  buffer << new_element
  buffer.shift if buffer.size >= max_buffer_size
  buffer
end
def rolling_buffer2(input_array, max_buffer_size, new_element)
  buffer = input_array + [new_element]
  buffer.shift if buffer.size >= max_buffer_size
  buffer
end
puts "after executing rolling_buffer1 on test_arr with a maxsize of 4 and a new_element of 6, returned value is [2,3,4,5,6] and test_arr is [2,3,4,5,6]"
puts "after executing rolling_buffer2 on test_arr with a maxsize of 4 and a new_element of 6, returned value is [2,3,4,5,6] and test_arr is [1,2,3,4,5]"

puts "question 7"
puts "undefined local variable or method 'limit' for main:Object [limit is out of scope]"
def fib(first_num, second_num)
  limit = 15
  while second_num < limit
    sum = first_num + second_num
    first_num = second_num
    second_num = sum
  end
  sum
end
result = fib(0, 1)
puts "result is #{result}"

puts "question 8"
def titleize(str)
  str_arr = str.split(' ')
  str_arr.each{ |str|
    str.capitalize!
  }
  st = str_arr.join(' ')
  return st
end

titleize('Hello, is it me you are looking for?')

puts "question 9"
munsters = {
  "Herman" => { "age" => 32, "gender" => "male" },
  "Lily" => { "age" => 30, "gender" => "female" },
  "Grandpa" => { "age" => 402, "gender" => "male" },
  "Eddie" => { "age" => 10, "gender" => "male" },
  "Marilyn" => { "age" => 23, "gender" => "female"}
}

munsters.each { | k,v|
  case v['age']
  when 0..17
    v['age_group'] = 'kid'
  when 18..64
    v['age_group'] = 'adult'
  else
    v['age_group'] = 'senior'
  end
}

p munsters
