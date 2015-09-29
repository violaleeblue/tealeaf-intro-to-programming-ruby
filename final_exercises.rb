puts "exercise 1"
arr = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
arr.each { |x|
  puts x
}

puts "exercise 2"
arr.each { |x|
  next unless x > 5
  puts x
}

puts "exercise 3"
odds = arr.select { |x|
  x % 2 == 1
}
p odds

puts "exercise 4"
arr.unshift(0)
arr.push(11)

puts "exercise 5"
arr.pop()
arr.push(3)

puts "exercise 6"
arr.uniq

puts "exercise 7"
puts "an array is indexed implicitly with numbers. a hash is indexed with strings."

puts "exercise 8"
cheeses = {
  :pizza => "mozzarella",
  :caesar => "parmesan",
  :beer => "stilton",
  :baguette => "brie"
}

cleaning_products = {
  windows: "windex",
  piano: "furniture polish",
  floors: "pine sol",
  bathtub: "comet"
}

puts "exercise 9"
h = {a:1, b:2, c:3, d:4}
p h[:b]
h[:e] = 5
p h
h.select {|k,v|
  v > 3.5
}

puts "exercise 10"
hash_arr = {
  :a => [1,2,3],
  :b => [4,5,6],
  :c => [7,8,9]
}
arr_hashes = [
  {:a=>'cats'}, {:b => 'dogs'}, {:c => 'pigs'}
]
p hash_arr
p arr_hashes

puts "exercise 11"
puts "http://api.rubyonrails.org/"

puts "exercise 12"
contact_data = [["joe@email.com", "123 Main st.", "555-123-4567"],
            ["sally@email.com", "404 Not Found Dr.", "123-234-3454"]]

contacts = {"Joe Smith" => {}, "Sally Johnson" => {}}
contacts['Joe Smith'][:email] = contact_data[0][0]
contacts['Joe Smith'][:address] = contact_data[0][1]
contacts['Joe Smith'][:phone] = contact_data[0][2]
contacts['Sally Johnson'][:email] = contact_data[1][0]
contacts['Sally Johnson'][:address] = contact_data[1][1]
contacts['Sally Johnson'][:phone] = contact_data[1][2]

puts "exercise 13"
puts "joes email is #{contacts['Joe Smith'][:email]}"
puts "sallys phone number is #{contacts['Sally Johnson'][:phone]}"

    if value =~ /\@/
      contacts[index][:email] = value
    elsif value =~ /\d{3}\-\d{3}\-\d{4}/
      contacts[index][:phone] = value
    else
      contacts[index][:address] = value
    end

puts "exercise 14"
contact_data.each { |contents|
  if contents[0] =~ /joe/
    key = 'Joe Smith'
  else
    key = 'Sally Johnson'
  end
  contents.each {|value|
    if value =~ /\@/
      contacts[key][:email] = value
    elsif value =~ /\d{3}\-\d{3}\-\d{4}/
      contacts[key][:phone] = value
    else
      contacts[key][:address] = value
    end
  }
}
p contacts

puts "exercise 15"
strs = ['snow', 'winter', 'ice', 'slippery', 'salted roads', 'white trees']
strs.delete_if { |str|
  str.start_with?('s')
}
strs_next = ['snow', 'winter', 'ice', 'slippery', 'salted roads', 'white trees']
strs_next.delete_if { |str_next|
  str_next.start_with?("s","w")
}
p strs
p strs_next

puts "exercise 16"
a = ['white snow', 'winter wonderland', 'melting ice',
     'slippery sidewalk', 'salted roads', 'white trees']
a = a.map { |word|
  word.split(' ')
}
a = a.flatten
p a

puts "exercise 17"
puts "these hashes are the same!"
