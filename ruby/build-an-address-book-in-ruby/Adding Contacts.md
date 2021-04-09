#Adding Contacts: Part 1
Our address book functionality is getting there. 
In this video, we implement the ability to add contacts via the command line.

##Techer's Notes

**Code Samples**

`def run
  loop do
    puts "Address Book"
    puts "a: Add Contact"
    puts "p: Print Address Book"
    puts "e: Exit"
    print "Enter your choice: "
    input = gets.chomp.downcase
    case input
    when 'a'
      add_contact
    when 'p'
      print_contact_list
    when 'e'
      break  
    end
  end
end
``
def add_contact
  contact = Contact.new
  print "First name: "
  contact.first_name = gets.chomp
  print "Middle name: "
  contact.middle_name = gets.chomp
  print "Last name: "
  contact.last_name = gets.chomp
  contacts.push(contact)
end`
