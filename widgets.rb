def ask(question)
	print question + " "
	gets.chomp # Add ".chomp" here
end

# New method here
# Updated to give discounts based on quantity
def price(quantity)
	if quantity >= 100
		price_per_unit = 8
	end
	if quantity >= 50
		price_per_unit = 9
	else
		price_per_unit = 10
	end
	quantity * price_per_unit
 end

puts "Welcome to the widget store!"
answer = ask("How many widgets are you ordering?")
number = answer.to_i
total = price(number) # Call new method
puts "For #{number} widgets, your total is: $#{total}"