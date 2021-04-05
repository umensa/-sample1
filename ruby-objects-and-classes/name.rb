class Name 
	attr_accessor :title, :first_name, :middle_name, :last_name
	
	def initialize(title, first_name, middle_name, last_name)
		@title = title
		@first_name = first_name
		@middle_name = middle_name
		@last_name = last_name
	end

	def full_name
		@first_name + " " + @middle_name + " " + @last_name
	end

	def full_name_with_title
		@title + " " + full_name()
	end

	def to_s
		full_name_with_title
	end
end

name = Name.new("Mr.", "Mohamed", "", "Zouari")
puts name.full_name_with_title
puts name
puts name.inspect