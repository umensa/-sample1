Ruby makes heavy use of blocks in the built in types and the standard library. 
In this video, we explore Arrays and Hashes.

#Techer's Notes


Documentation Links

    [Ruby Array Documentation](https://www.ruby-doc.org/core-2.2.0/Array.html)
    [Ruby Hash Documentation](https://www.ruby-doc.org/core-2.2.0/Hash.html)

**Code Samples**

__Given the following array:__

`array = [1, 2, 3]`

___Array#each___

`array.each { |item| print "-#{item}-" }`

_Prints out:_

`-1--2--3-`

___Array#select:___

`array.select { |item| item > 2 }`

_This returns a new array with the following:_

    [3]

___Array#delete_if___

`array.delete_if { |item| item == 1 }`

_The array is now:_

    [2, 3]

___Array#reject___

`array.reject { |item| item % 3 == 0 }`

The above returns a new array: `[1, 2]`

___Array#count___

`array.count`

The above returns `3`. But `count` can also be passed a block:

`array.count { |item| item % 3 == 0 }`

The above statement returns 1.

__Hashes__

Given the following hash:

`hash = { 'name' => 'Jason', 'location' => 'Treehouse' }`

___Hash#each___

`hash.each do |key, value|
  puts "key: #{key} value: #{value}"
end`

_Prints the following:_

    key: name value: Jason
    key: location value: Treehouse

___Hash#each_key:___

`hash.each_key{ |key| puts "key: #{key}" }`

_Prints the following:_

    key: name
    key: location

___Hash#each_value:___

`hash.each_value { |val| puts "val: #{val}" }`

_Prints the following:_

    val: Jason
    val: Treehouse

___Hash#keep_if___

`hash.keep_if{ |key, val| key == "name" }`

_The hash is now:_

    { 'name' => 'Jason' }

___Hash#reject___

`hash.reject { |key, val| key == "name" }`

_The hash is now:_

    {}

___Hash#select___

`hash.select { |key, val| key == "name" }`

_Returns a new hash:_

    { 'name' => 'Jason' }
