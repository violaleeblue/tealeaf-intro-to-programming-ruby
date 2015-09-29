puts "exercise 1"
family = {  uncles: ["bob", "joe", "steve"],
            sisters: ["jane", "jill", "beth"],
            brothers: ["frank","rob","david"],
            aunts: ["mary","sally","susan"]
          }
arr = family.select { |k,v| (k == :sisters) || (k == :brothers) }
final = arr.values.flatten!
p final

puts "exercise 2"
hash1 = {
  baseball: "spring",
  basketball: "winter",
  soccer: "fall",
  swimming: "summer"
}
hash2 = {
  swimming: "splash",
  basketball: "bounce",
  soccer: "kick",
  baseball: "hit"
}

test1 = hash1.merge(hash2)
p test1
p hash1
p hash2

test2 = hash1.merge!(hash2)
p test2
p hash1
p hash2

puts "exercise 3"
pets = {
  cat: "meow",
  dog: "woof",
  parakeet: "tweet",
  snake: "hiss"
}

pets.each_key {|k|
  puts k
}

pets.each_value { |v|
  puts v
}

pets.each {|k,v|
  puts "#{k}: #{v}"
}

puts "exercise 4"
person = {name: 'Bob', occupation: 'web developer', hobbies: 'painting'}
puts person[:name]

puts "exercise 5"
pets = {
  cat: "meow",
  dog: "woof",
  parakeet: "tweet",
  snake: "hiss"
}
puts pets.value?("woof")

puts "exercise 6"
words = ['demo', 'none', 'tied', 'evil', 'dome', 'mode', 'live','fowl', 'veil', 'wolf', 'diet', 'vile', 'edit', 'tide','flow', 'neon']
results = {}
words.each {|word|
  temp = word.split('').sort.join
  if !results.has_key?(temp)
    results[temp] = []
    results[temp].push(word)
  else
    results[temp].push(word)
  end
}
results.each_value { |value|
  p value
}

puts "exercise 7"
puts "the first hash sets the symbol :x as the hash key. the second hash uses the value of x (hi there) as the hash key"

puts "exercise 8"
puts "B"
