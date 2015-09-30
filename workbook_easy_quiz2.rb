puts "question 1"
ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 402, "Eddie" => 10 }
result = ages.has_key?("Spot")
p result

puts "question 2"
ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 5843, "Eddie" => 10, "Marilyn" => 22, "Spot" => 237 }
total = 0
ages.each_value { | v |
  total = total + v
}
p total

puts "question 3"
ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 402, "Eddie" => 10 }
ages.select {|k,v| v < 100}
p ages

puts "question 4"
munsters_description = "The Munsters are creepy in a good way."
puts munsters_description.capitalize
puts munsters_description.swapcase
puts munsters_description.downcase
puts munsters_description.upcase

puts "question 5"
ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 5843, "Eddie" => 10 }
additional_ages = { "Marilyn" => 22, "Spot" => 237 }
ages = ages.merge(additional_ages)
p ages

puts "question 6"
ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 5843, "Eddie" => 10, "Marilyn" => 22, "Spot" => 237 }
sorted_ages = ages.sort_by{|k,v| v}
min = sorted_ages[0]
p min

puts "question 7"
advice = "Few things in life are as important as house training your pet dinosaur."
puts advice =~ /Dino/

puts "question 8"
flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)
our_index
flintstones.each_with_index {|v, index|
  if v.start_with?("Be")
    our_index = index
  end
}
p our_index

puts "question 9"
flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)
flintstones = flintstones.map {|name|
  name.slice(0,3)
}
p flintstones

puts "question 10"
flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)
flintstones = flintstones.map { |name| name[0,3]}
p flintstones

