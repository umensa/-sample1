#Displaying a Menu
Our users will need a way to interact with our program. 
In this video, we begin to offer that functionality by displaying a simple menu and waiting for input.

##Techer's Notes

**Code Samples**
`def run
  loop do
    puts "Address Book"
    puts "e: Exit"
    print 'Enter your choice: '
    input = gets.chomp
    case input
    when 'e'
      break
    end
  end
end
`
We call this by saying:

`address_book.run`
