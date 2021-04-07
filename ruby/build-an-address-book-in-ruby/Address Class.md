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
