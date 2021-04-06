Just like regular methods, blocks can also take arguments.

#Techer's Notes

**Code Samples**

A block with an argument:
`
[1, 2, 3].each do |number|
  puts number
end
`
Passing an argument to a block:
`
def get_name
  print "Enter your name: "
  name = gets.chomp
  yield name
end
``
get_name do |name|
  puts "That's a cool name, #{name}!"
end
`
Block arguments do not have to have the same name as the argument passed in:
`
def get_name
  print "Enter your name: "
  name = gets.chomp
  yield name
end
``
get_name do |your_name|
  puts "That's a cool name, #{your_name}!"
end
`
Methods that take blocks can return values normally:
`
def get_name
  print "Enter your name: "
  name = gets.chomp
  yield name
  name
end
``
name = get_name do |your_name|
  puts "That's a cool name, #{your_name}!"
end`
