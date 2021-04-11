#Saving The Address Book
Saving

##Techer's Notes
**Documentation Links**
    [Ruby IO Documentation](https://ruby-doc.org//core-2.2.0/IO.html)
    [Ruby YAML Documentation](https://ruby-doc.org/stdlib-2.2.0/libdoc/yaml/rdoc/YAML.html)
    [Ruby Psych Documentation](https://ruby-doc.org/stdlib-2.2.0/libdoc/psych/rdoc/Psych.html) - This is the class YAML interfaces with.


**Code Samples**

`require "./contact"
require "yaml"
``
class AddressBook
  attr_reader :contacts
``
  def initialize
    @contacts = []
    open()
  end
``
  def open
    if File.exist?("contacts.yml")
      @contacts = YAML.load_file("contacts.yml")
    end
  end
``
  def save
    File.open("contacts.yml", "w") do |file|
      file.write(contacts.to_yaml)
    end
  end
``
  def run
    loop do
      puts "Address Book"
      puts "a: Add Contact"
      puts "p: Print Address Book"
      puts "s: Search"
      puts "e: Exit"
      print "Enter your choice: "
      input = gets.chomp.downcase
      case input
      when 'a'
        add_contact
      when 'p'
        print_contact_list
      when 's'
        print "Search term: "
        search = gets.chomp
        find_by_name(search)
        find_by_phone_number(search)
        find_by_address(search)
      when 'e'
        save()
        break  
      end
      puts "\n"
    end
  end`
  