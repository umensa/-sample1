#Extend and Include
In this video, we learn a little trick with extending and including something at the same time.

##Techer's Notes
**Code Samples**
`module Inventoryable
``
  def self.included(klass)
    klass.extend(ClassMethods)
  end
``
  module ClassMethods
    def create(attributes)
      object = new(attributes)
      instances.push(object)
      return object
    end
``
    def instances
      @instances ||= []
    end
  end
``
  def stock_count
    @stock_count ||= 0
  end
``
  def stock_count=(number)
    @stock_count = number
  end
``
  def in_stock?
    stock_count > 0
  end
``
end
``
class Shirt
  include Inventoryable
  attr_accessor :attributes
``
  def initialize(attributes)
    @attributes = attributes
  end
end`
