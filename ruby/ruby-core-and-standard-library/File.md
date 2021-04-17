#File
The File class handles file input and output in Ruby.
When working with files in a programming language, there are different things you need to tell the computer to do in order to assure that files are correctly handled on the disk.
There are different modes that files can be opened as well: reading, writing, and different combinations of both of those.

##Techer's Notes
**Links**
    _File documentation_ http://ruby-doc.org/core-2.2.2/File.html
    _IO documentation_ http://ruby-doc.org/core-2.2.2/IO.html

**Code Samples**
In this example, we open and write to a file:
`
File.open("example.txt", "w") do |file|
  print "Enter your name: "
  name = gets.chomp
  file.puts "Name: #{name}"
  print "Enter your email: "
  email = gets.chomp
  file.puts "Email: #{email}"
end`
