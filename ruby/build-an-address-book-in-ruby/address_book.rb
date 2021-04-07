# frozen_string_literal: true

require './contact'

# Class
class AddressBook
  attr_reader :contacts

  def initialize
    @contacts = []
  end

  def print_contat_list
    puts 'Contact list'
    contacts.each do |contact|
      puts contact.to_s('last_first')
    end
  end
end

address_book = AddressBook.new

mohamed = Contact.new
mohamed.first_name = 'Mohamed'
mohamed.last_name = 'Zouari'
mohamed.add_phone_number('Home', '123-456-7890')
mohamed.add_phone_number('Work', '456-789-0123')
mohamed.add_address('Home', '123 Main St.', '', 'Portland', 'OR', '12345')

nick = Contact.new
nick.first_name = 'Nick'
nick.last_name = 'Pettit'
nick.add_phone_number('Home', '222-333-4444')
nick.add_address('Home', '222 Two Lane', '', 'Portland', 'OR', '12345')

address_book.contacts.push(mohamed)
address_book.contacts.push(nick)

address_book.print_contat_list
