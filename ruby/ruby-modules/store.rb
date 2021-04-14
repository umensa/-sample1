# frozen_string_literal: true

# module Inventoryable

# class Shirt
class Shirt
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
