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

#Adding Contacts: Part 2

##Techer's Notes

**Code Samples**

`def add_contact
  contact = Contact.new
  print "First name: "
  contact.first_name = gets.chomp
  print "Middle name: "
  contact.middle_name = gets.chomp
  print "Last name: "
  contact.last_name = gets.chomp
``
  loop do
    puts "Add phone number or address? "
    puts "p: Add phone number"
    puts "a: Add address"
    puts "(Any other key to go back)"
    response = gets.chomp.downcase
    case response
    when 'p'
      phone = PhoneNumber.new
      print "Phone number kind (Home, Work, etc): "
      phone.kind = gets.chomp
      print "Number: "
      phone.number = gets.chomp
      contact.phone_numbers.push(phone)
    when 'a'
      address = Address.new
      print "Address Kind (Home, Work, etc): "
      address.kind = gets.chomp
      print "Address line 1: "
      address.street_1 = gets.chomp
      print "Address line 2: "
      address.street_2 = gets.chomp
      print "City: "
      address.city = gets.chomp
      print "State: "
      address.state = gets.chomp
      print "Postal Code: "
      address.postal_code = gets.chomp
      contact.addresses.push(address)
    else
      print "\n"
      break
    end
  end
``
  contacts.push(contact)
end`
