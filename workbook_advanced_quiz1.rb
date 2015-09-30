puts "question 1"
if false
  greeting = "hello world"
end

greeting

puts "nothing happens, greeting is not in scope"

puts "question 2"
greetings = { a: 'hi' }
informal_greeting = greetings[:a]
informal_greeting << ' there'

puts informal_greeting
puts greetings

puts "prints { a: 'hi there' } because the shovel operator mutates the caller"

puts "question 3"
  def mess_with_vars(one, two, three)
    one = two
    two = three
    three = one
  end

  one = "one"
  two = "two"
  three = "three"

  mess_with_vars(one, two, three)

  puts "one is: #{one}"
  puts "two is: #{two}"
  puts "three is: #{three}"

  puts "prints one is one, two is two, three is three, because they are not modified within the scope in which they are being printed"

  def mess_with_vars(one, two, three)
    one = "two"
    two = "three"
    three = "one"
  end

  one = "one"
  two = "two"
  three = "three"

  mess_with_vars(one, two, three)

  puts "one is: #{one}"
  puts "two is: #{two}"
  puts "three is: #{three}"

  puts "this is the same code as above with the same result"

    def mess_with_vars(one, two, three)
    one.gsub!("one","two")
    two.gsub!("two","three")
    three.gsub!("three","one")
  end

  one = "one"
  two = "two"
  three = "three"

  mess_with_vars(one, two, three)

  puts "one is: #{one}"
  puts "two is: #{two}"
  puts "three is: #{three}"

  puts "gsub mutates the caller, so this prints one is two, two is three, three is one"

  puts "question 4"
  def return_uuid
    uuid = ''
    multipliers = [8,4,4,4,12]
    multipliers.each {|num|
      uuid += num.times.map { [*'0'..'9', *'a'..'f'].sample }.join.to_s
      uuid += '-'
    }
    uuid.chomp!('-')
    return uuid
  end

  p return_uuid

  puts "question 5"
  def dot_separated_ip_address?(input_string)
  dot_separated_words = input_string.split(".")
  if dot_separated_words.length == 4
    while dot_separated_words.size > 0 do
      word = dot_separated_words.pop
      return false if !is_a_number?(word)
    end
    true
  else
    false
  end
end
