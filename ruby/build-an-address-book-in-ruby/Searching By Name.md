#Searching By Name
In this video, we implement a method to search for contacts by their name.

##Techer's Notes

**Code Samples**
Here is our find_by_name method:

`def find_by_name(name)
  results = []
  search = name.downcase
  contacts.each do |contact|
    if contact.full_name.downcase.include?(search)
      results.push(contact)
    end
  end
  puts "Name search results (#{search})"
  results.each do |contact|
    puts contact.to_s('full_name')
    contact.print_phone_numbers
    contact.print_addresses
    puts "\n"
  end
end 
`
Which we can call as follows:

`address_book.find_by_name("e")`
