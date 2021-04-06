# frozen_string_literal: true

string = 'Treehouse'
string.each_char { |c| print "#{c}-" } # => 'T-r-e-e-h-o-u-s-e'

haiku = <<-END_OF_FILE
  A string with three lines
  Is considered multi line
  Ruby code haiku
END_OF_FILE

haiku.each_line { |line| puts "* #{line}" }
# Prints the following:
# * A string with three lines
# * Is considered multi line
# * Ruby code haiku

5.downto(3) { |number| print number } # 543

array = [1, 2, 3]

array.each { |item| print "-#{item}-" }
# Prints out:
# -1--2--3-

array.select { |item| item > 2 }
# This returns a new array with: [3]

array.delete_if { |item| item == 1 }
# The array is now: [2, 3]

array = [1, 2, 3]
array.reject { |item| (item % 3).zero? }
# array.reject { |item| item % 3 == 0 }
# The above returns a new array: [1, 2]

array.count
# The above returns 3

array.count { |item| (item % 3).zero? }
# The Array#count method can also take a block.
# The above statement returns 1.

hash = { 'name' => 'Mohamed', 'location' => 'Treehouse' }
hash.each do |key, value|
  puts "key: #{key} value: #{value}"
end
# Prints the following:
# key: name value: Mohamed
# key: location value: Treehouse

hash.each_key { |key| puts "key: #{key}" }
# Prints the following:
# key: name
# key: location

hash.each_value { |val| puts "value: #{val}" }
# Prints the following:
# value: Mohamed
# value: Treehouse

hash.keep_if { |key, _val| key == 'name' }
# The hash is now:
# {"name"=>"Mohamed"}

hash.reject { |key, _val| key == 'name' }
# The hash is now:
# {}

hash = { 'name' => 'Mohamed', 'location' => 'Treehouse' }
hash.select { |key, _val| key == 'name' }
# Returns a new hash:
# {"name"=>"Mohamed"}
