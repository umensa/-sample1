#Ruby Enumerable
In this workshop, we'll learn all about the Ruby Enumerable module and see different examples of how it works.

##Techer's Notes
**Code Samples**
`array = [1, 2, 3, 4, 5, 6]
``
array.each { |item| puts "Item: #{item}" }
array.each_with_index {|item, index| puts "[#{index}] #{item}"}
array.member?(3)
array.all? { |item| item > 3 }
array.any? { |item| item > 3 }
array.detect {|item| item > 3 }
array.select {|item| item > 3 }
# array.find_all is the same
array.map { |item| item + 3 }
``
puts array.take(2)
``
hash = {name: "Jason", location: "Treehouse", position: "Teacher"}
puts hash.map{|k,v| "#{k}: #{v}"}.inspect
puts hash.take(2).inspect
``
``
puts array.inject{|sum, item| sum += item}
puts array.inject(&:+)`
