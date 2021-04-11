#Address Class: Part 1
Contacts are going to have both phone numbers and addresses.
In this video, we're going to define the `to_s` method on the address class and have it be able to take a formatting argument.

##Techer's Notes

**Code Samples**

Address.rb:

`class Address
  attr_accessor :kind, :street_1, :street_2, :city, :state, :postal_code
``
  def to_s(format = 'short')
    address = ''
    case format
    when 'long'
      address += street_1 + "\n"
      address += street_2 + "\n" if !street_2.nil?
      address += "#{city}, #{state} #{postal_code}"
    when 'short'
      address += "#{kind}: "
      address += street_1
      if street_2
        address += " " + street_2
      end
      address += ", #{city}, #{state}, #{postal_code}"
    end
    address
  end
end
``
home = Address.new
home.kind = "Home"
home.street_1 = "123 Main St."
home.city = "Portland"
home.state = "OR"
home.postal_code = "12345"
``
puts home.to_s('short')
puts "\n"
puts home.to_s('long')
`

#Address Class: Part 2

##Techer's Notes

**Code Samples**

Contact Class:

Add to require address class:

`require './address'`

Our initialize method now looks like this:

`class Contact
  attr_writer :first_name, :middle_name, :last_name
  attr_reader :phone_numbers, :addresses
``
  def initialize
    @phone_numbers = []
    @addresses = []
  end
`
Here's our add_address method:

`  def add_address(kind, street_1, street_2, city, state, postal_code)
    address = Address.new
    address.kind = kind
    address.street_1 = street_1
    address.street_2 = street_2
    address.city = city
    address.state = state
    address.postal_code = postal_code
    addresses.push(address)
  end
`
And we can print them as well:

`  def print_addresses
    puts "Addresses"
    addresses.each { |address| puts address.to_s('short') }
  end
`
Then call it as follows:
`
jason = Contact.new
jason.first_name = "Jason"
jason.last_name = "Seifer"
jason.add_phone_number("Home", "123-456-7890")
jason.add_phone_number("Work", "456-789-0123")
jason.add_address("Home", "123 Main St.", "", "Portland", "OR", "12345")
``
puts jason.to_s('full_name')
jason.print_phone_numbers
jason.print_addresses`
