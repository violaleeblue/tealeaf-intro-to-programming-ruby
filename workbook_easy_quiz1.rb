puts "question 1"
puts "[1,2,3]"

puts "question 2"
puts "!= means not equal to. you should use it when evaluating a conditional."
puts "! before something means boolean false. evaluates to true if the variable is undefined or nil."
puts "! after something means modify the caller when evaluating a method"
puts "? before something is a ternary operator"
puts "? after something matches a variable against truthiness for a given method. for example, has_key? is a method that evalutes whether a key is present in a hash."
puts "!! before something means 'not-not', that is, boolean true."

puts "question 3"
advice = "Few things in life are as important as house training your pet dinosaur."
result = advice.gsub(/important/, 'urgent')
p result

puts "question 4"
puts "delete_at deletes the item at a given index, ie number 2 in this example"
puts "delete deletes the item itself, ie number 1 in this example"

puts "question 5"
def check_between(num)
  answer = 'no'
  case num
  when (10..100)
    answer = 'yes!'
  end
  return answer
end

puts check_between(42)

puts "question 6"
famous_words = "seven years ago..."
famous_words.prepend("four score and ")
famous_words = "four score and " + famous_words

puts "question 7"
def add_eight(number)
  number + 8
end
number = 2
how_deep = "number"
5.times { how_deep.gsub!("number", "add_eight(number)") }
eval(how_deep)
puts "42"

puts "question 8"
flintstones = ["Fred", "Wilma"]
flintstones << ["Barney", "Betty"]
flintstones << ["BamBam", "Pebbles"]
flintstones = flintstones.flatten

puts "question 9"
flintstones = { "Fred" => 0, "Wilma" => 1, "Barney" => 2, "Betty" => 3, "BamBam" => 4, "Pebbles" => 5 }
barney = flintstones.assoc('Barney')
p barney

puts "question 10"
flintstones = ["Fred", "Barney", "Wilma", "Betty", "Pebbles", "BamBam"]
flint_hash = {}
flintstones.each_with_index {|name,index|
  flint_hash[name] = index
}
p flint_hash
