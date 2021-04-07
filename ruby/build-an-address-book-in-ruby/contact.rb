# frozen_string_literal: true

require './phone_number'
require './address'

# Class
class Contact
  attr_writer :first_name, :middle_name, :last_name
  attr_reader :phone_numbers, :addresses

  def initialize
    @phone_numbers = []
    @addresses = []
  end

  def add_phone_number(kind, number)
    phone_number = PhoneNumber.new
    phone_number.kind = kind
    phone_number.number = number
    phone_numbers.push(phone_number)
  end

  def add_address(kind, street_one, street_two, city, state, postal_code)
    address = Address.new
    address.kind = kind
    address.street_one = street_one
    address.street_two = street_two
    address.city = city
    address.state = state
    address.postal_code = postal_code
    addresses.push(address)
  end

  def first_name
    @first_name
  end

  def middle_name
    @middle_name
  end

  def last_name
    @last_name
  end

  def first_last
    first_name + ' ' + last_name
  end

  def last_first
    last_first = last_name
    last_first += ', '
    last_first += first_name
    unless @middle_name.nil?
      last_first += ' '
      last_first += middle_name.slice(0, 1)
      last_first += '.'
    end
    last_first
  end

  def to_s(format = 'full_name')
    case format
    when 'full_name'
      full_name
    when 'last_first'
      last_first
    when 'first'
      first_name
    when 'last'
      last_name
    else
      first_last
    end
  end

  def full_name
    full_name = first_name
    unless @middle_name.nil?
      full_name += ' '
      full_name += middle_name
    end
    full_name += ' '
    full_name += last_name
    full_name
  end

  def print_phone_numbers
    puts 'Phone Numbers'
    phone_numbers.each { |phone| puts phone }
  end

  def print_addresses
    puts 'Addresses'
    addresses.each { |address| puts address.to_s('short') }
  end
end

mohamed = Contact.new
mohamed.first_name = 'Mohamed'
mohamed.last_name = 'Zouari'
mohamed.add_phone_number('Home', '123-456-7890')
mohamed.add_phone_number('Work', '456-789-0123')
mohamed.add_address('Home', '123 Main St.', '', 'Portland', 'OR', '12345')

puts mohamed.to_s('full_name')
mohamed.print_phone_numbers
mohamed.print_addresses
