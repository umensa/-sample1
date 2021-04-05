Ruby makes heavy use of blocks in the built in types and the standard library. 
In this video, we explore Strings and Integers.

#Techer's Notes

**Documentation Links**

    [Ruby String Documentation](http://www.ruby-doc.org/core-2.2.0/String.html)
    [Ruby Integer Documentation](http://www.ruby-doc.org/core-2.2.0/Integer.html)

**Code Samples**

String#each_char:
`
string = "Treehouse"
string.each_char{|c| print "#{c}-"} 
`
This prints out:
`
"T-r-e-e-h-o-u-s-e"
`
String#each_line:
`
haiku = <<-EOF
A string with three lines
Is considered multi line
Ruby code haiku
EOF
``
haiku.each_line{ |line| puts "* #{line}" }
`
Prints the following:
`
* A string with three lines
* Is considered multi line
* Ruby code haiku
`
Integer#down_to:
`
5.downto(3) { |number| print number }
`
Prints out the following:
`
543
`
