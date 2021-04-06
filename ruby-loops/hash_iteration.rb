business = { "name" => "Treehouse", "location" => "Portland, OR" }

#The each method is also each_pair
business.each do |key, value|
	puts "The hash key is #{key} and value is #{value}."
end

business.each_key do |key|
	puts "key: #{key}"
end

business.each_value do |value|
	puts "value: #{value}"
end