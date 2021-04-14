# frozen_string_literal: true

# module Inventoryable
module Inventoryable
  def self.included(klass)
    klass.extend(ClassMethods)
  end

  # module ClassMethods
  module ClassMethods
    def create(attributes)
      object = new(attributes)
      instances.push(object)
      object
    end

    def instances
      @instances ||= []
    end
  end

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

shirt_one = Shirt.create(name: 'MTF', size: 'L')
shirt_two = Shirt.create(name: 'MTF', size: 'M')

shirt_one.stock_count = 10

puts Shirt.instances.inspect
