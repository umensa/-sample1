# frozen_string_literal: true

# module Inventoryable
module Inventoryable
  def stock_count
    @stock_count ||= 0
  end

  def stock_count=(number)
    @stock_count = number
  end

  def in_stock?
    stock_count.positive?
  end
end

# class Shirt
class Shirt
  include Inventoryable

  attr_accessor :attributes

  def initialize(attributes)
    @attributes = attributes
  end
end

# class Pant
class Pant
  attr_accessor :attributes

  def initialize(attributes)
    @attributes = attributes
  end
end

# class Accessory
class Accessory
  attr_accessor :attributes

  def initialize(attributes)
    @attributes = attributes
  end
end

shirt_one = Shirt.new(name: 'MTF', size: 'L')
shirt_two = Shirt.new(name: 'MTF', size: 'M')

shirt_one.stock_count = 10
puts "Shirt 1 stock count: %s" % shirt_one.stock_count
puts "Shirt 2 stock count: %s" % shirt_two.stock_count

puts "Shirt 1 in stock?: %s" % shirt_one.in_stock?
puts "Shirt 2 in stock?: %s" % shirt_two.in_stock?
