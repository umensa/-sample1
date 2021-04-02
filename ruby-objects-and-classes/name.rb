class Name
	attr_reader :first_name, :middle_name, :last_name
	attr_accessor :title
#Ruby gives us shortcuts to write common pieces of code. 
#The process of accessing and writing attributes in a class can be done using `attr_writer` and `attr_accessor` to ease repeating code.

	def initialize(title, first_name, middle_name, last_name)
		@title = title
		@first_name = first_name
		@middle_name = middle_name
		@last_name = last_name
	end
end

name = Name.new("Mr.", "Mohamed", "", "Zouari")
puts name.title + " " +
	name.first_name + " " +
	name.middle_name + " " +
	name.last_name

puts "Title: #{name.title}"
name.title = "Dr."
puts "Title: #{name.title}"