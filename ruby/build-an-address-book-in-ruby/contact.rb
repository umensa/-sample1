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
end

mohamed = Contact.new
mohamed.first_name = 'Mohamed'
mohamed.last_name = 'Zouari'
puts mohamed.to_s
puts mohamed.to_s('full_name')
puts mohamed.to_s('last_first')

nick = Contact.new
nick.first_name = 'Nick'
nick.middle_name = 'A'
nick.last_name = 'Pettit'
puts nick.to_s('full_name')
puts nick.to_s('first_last')
