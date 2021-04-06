# frozen_string_literal: true

# Class
class Contact
  attr_writer :first_name, :middle_name, :last_name

  def first_name
    @first_name
  end

  def middle_name
    @middle_name
  end

  def last_name
    @last_name
  end

  def full_name
    full_name = first_name
    if !@middle_name.nil?
      full_name += ' '
      full_name += middle_name
    end
    full_name += ' '
    full_name += last_name
    full_name
  end
end

mohamed = Contact.new
mohamed.first_name = 'Mohamed'
mohamed.last_name = 'Zouari'
puts mohamed.full_name

nick = Contact.new
nick.first_name = 'Nick'
nick.middle_name = 'A'
nick.last_name = 'Pettit'
puts nick.full_name
