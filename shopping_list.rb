def create_list
	print "What is the list name? "
	name = gets.chomp

	hash = {"name" => name, "item" => Array.new}
	return hash
end

def add_list_item
	print "What is the item called? "
	item_name = gets.chomp

	hash = {"name" => name}
	return hash
end

list = create_list()
puts list.inspect