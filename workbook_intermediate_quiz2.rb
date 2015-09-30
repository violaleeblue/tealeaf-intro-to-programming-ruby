puts "question 1"
munsters = {
  "Herman" => { "age" => 32, "gender" => "male" },
  "Lily" => { "age" => 30, "gender" => "female" },
  "Grandpa" => { "age" => 402, "gender" => "male" },
  "Eddie" => { "age" => 10, "gender" => "male" }
}
total_ages = 0
munsters.each {|k,v|
  if (v['gender'] == 'male')
    total_ages += v['age']
  end
}
p total_ages

puts "question 2"
munsters = {
  "Herman" => { "age" => 32, "gender" => "male" },
  "Lily" => { "age" => 30, "gender" => "female" },
  "Grandpa" => { "age" => 402, "gender" => "male" },
  "Eddie" => { "age" => 10, "gender" => "male" },
  "Marilyn" => { "age" => 23, "gender" => "female"}
}
str = '(Name) is a (age) year old (male or female).'
munsters.each {|k,v|
  p str.gsub(/\(Name\)/,k).gsub(/\(age\)/,v['age'].to_s).gsub(/\(male or female\)/,v['gender'])
}

puts "question 3"
def tricky_method(a_string_param, an_array_param)
  a_string_param += "rutabaga"
  an_array_param += ["rutabaga"]
  return a_string_param, an_array_param
end

my_string = "pumpkins"
my_array = ["pumpkins"]
my_string, my_array = tricky_method(my_string, my_array)

puts "My string looks like this now: #{my_string}"
puts "My array looks like this now: #{my_array}"

puts "question 4"
sentence = "Humpty Dumpty sat on a wall."
reversed = sentence.split(" ").reverse.join(' ')
p reversed

puts "question 5"
answer = 42
def mess_with_it(some_number)
  some_number += 8
end
new_answer = mess_with_it(answer)
p answer - 8

puts "outputs 34, because in the global scope answer does not change, remains 42"

puts "question 6"
munsters = {
  "Herman" => { "age" => 32, "gender" => "male" },
  "Lily" => { "age" => 30, "gender" => "female" },
  "Grandpa" => { "age" => 402, "gender" => "male" },
  "Eddie" => { "age" => 10, "gender" => "male" },
  "Marilyn" => { "age" => 23, "gender" => "female"}
}
def mess_with_demographics(demo_hash)
  demo_hash.values.each do |family_member|
    family_member["age"] += 42
    family_member["gender"] = "other"
  end
end
mess_with_demographics(munsters)
p munsters
puts "it got mangled"

puts "question 7"
def rps(fist1, fist2)
  if fist1 == "rock"
    (fist2 == "paper") ? "paper" : "rock"
  elsif fist1 == "paper"
    (fist2 == "scissors") ? "scissors" : "paper"
  else
    (fist2 == "rock") ? "rock" : "scissors"
  end
end

puts rps(rps(rps("rock", "paper"), rps("rock", "scissors")), "rock")
puts "paper"

puts "question 8"
def foo(param = "no")
  "yes"
end

def bar(param = "no")
  param == "no" ? "yes" : "no"
end
bar(foo)
puts "no (no != yes)"
