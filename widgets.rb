def ask(question)
	print question + " "
	gets.chomp # Add ".chomp" here
end

# New method here
def price(quantity)
 	quantity * 10
 end

puts "Welcome to the widget store!"
answer = ask("How many widgets are you ordering?")
number = answer.to_i
total = price(number) # Call new method
puts "For #{number} widgets, your total is: $#{total}"