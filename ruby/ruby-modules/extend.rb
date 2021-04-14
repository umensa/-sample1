# frozen_string_literal: true

# module Tracking
module Tracking
  def create(name)
    object = new(name)
    instances.push(object)
    object
  end

  def instances
    @instances ||= []
  end

  def find(name)
    instances.find do |instance|
      instance.name == name
    end
  end
end

# class Customer
class Customer
  attr_accessor :name

  extend Tracking

  def initialize(name)
    @name = name
  end

  def to_s
    "[#{@name}]"
  end
end

puts "Customer.instances: %s" % Customer.instances.inspect
puts "Customer.create: %s" % Customer.create('Mohamed')
puts "Customer.create: %s" % Customer.create('Kenneth')
puts "Customer.instances: %s" % Customer.instances.inspect
puts "Customer.find('Mohamed'): %s" % Customer.find('Mohamed')
puts "Customer.find('Mike'): %s" % Customer.find('Mike')
