Ruby gives us different ways to call blocks. 
In this video, we'll explore the yield keyword and using block.call.

#Techer's Notes


**Code Samples**

This is an example of calling the block using the `call` method:
`
def get_name(prompt, &block)
  print prompt
  name = gets.chomp
  block.call(name)
  name
end
``
my_name = get_name do |your_name|
  puts "That's a cool name, #{your_name}!"
end
``
puts "my_name: #{my_name}"
`
The `block_given?` keyword can be used to conditionally call a block if one was passed to a method:
``
def get_name(prompt, &block)
  print prompt
  name = gets.chomp
  block.call(name) if block_given?
  name
end
`
my_name = get_name("Name: ") do |your_name|
  puts "That's a cool name, #{your_name}!"
end
`
puts "my_name: #{my_name}"`
