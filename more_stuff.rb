puts "exercise one"
strs = ["laboratory", "experiment", "Pans Labyrinth", "elaborate", "polar bear"]
strs.each { |str|
  if str =~ /lab/i
    puts str
  end
}

puts "exercise 2"
puts "output is a Proc object. block is never called"

puts "exercise 3"
puts "exception handling is an error that is raised when something unexpected happens while executing a program. catching exceptions allows the developer to gracefully handle unexpected conditions"

puts "exercise 4"
def execute(&block)
  block.call
end
execute { puts "Hello from inside the execute method!" }

puts "exercise 5"
puts "because the ampersand is missing from the block argument to the method"