At its most basic, a block is statements of code that are grouped together. 
The statements can be grouped inside of curly braces or between the do and end keywords.

#Techer's Notes
**Blocks and Return Values**

Blocks must use the implicit return format in Ruby.

**A Note on Convention**

Conventionally, most Ruby programmers distinguish between the two formats the following way:

    Multi line blocks are usually written using the do and end format.
        Single line blocks are usually written using curly braces {}.

**Code Samples**

*A code block using the do and end syntax:*


`3.times do
  puts "Hello world!"
  puts "This is the second line."
  true
end`

*A code block using curly braces:*

`3.times { puts "Hello world!" }`

Have questions about this video? Start a discussion with the community and Treehouse staff.
