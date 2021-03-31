item = Hash.new
puts item.inspect

item = { "item" => "Bread", "quantity" => 1 }
puts item.inspect

item = { :item => "Bread", :quantity => 1 }
puts item.inspect

item[1] = "Grocery Store"
puts item.inspect

puts item[1]

item["brand"] = "Treehouse Bread Company"
puts item.inspect

other_item = {name: "Bread", quantity: 1}