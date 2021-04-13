# frozen_string_literal: true

# Class
class Address
  attr_accessor :kind, :street_one, :street_two, :city, :state, :postal_code

  def to_s(format = 'short')
    address = ''
    case format
    when 'long'
      address += "#{street_one}\n"
      address += "#{street_two}\n" unless street_two.nil?
      address += "#{city}, #{state}, #{postal_code}"
    when 'short'
      address += "#{kind}: "
      address += street_one
      address += " #{street_two}" unless street_two.nil?
      address += ", #{city}, #{state}, #{postal_code}"
    end
    address
  end
end