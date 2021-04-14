#Extend
Class methods are used when a method needs to have functionality but it may not be tied to a specific instance of a class.
The extend keyword in Ruby will mix behavior in to a class rather than instances of a class.

##Techer's Notes
**Code Samples**
We've created a tracking module that creats an instances of something, pushes it on to an instances array, and then can find it in said array.
`
module Tracking
  def create(name)
    object = new(name)
    instances.push(object)
    return object
  end
``
  def instances
    @instances ||= []
  end
``
  def find(name)
    instances.find do |instance|
      instance.name == name
    end
  end
end`

From there, when we use the extend keyword, these methods will apply at the class level and not the instance level.
`
class Customer
  extend Tracking
``
  attr_accessor :name
  def initialize(name)
    @name = name
  end
``
  def to_s
    "[#{@name}]"
  end
end`

Those methods now run at the class level and return instances of the class we just created:

`puts "Customer.instances: %s" % Customer.instances.inspect`

__Output:__

`Customer.instances: []`

_Input:_

`puts "Customer.create: %s" % Customer.create("Jason")`

__Output:__

`Customer.create: [Jason]`

_Input:_

`puts "Customer.create: %s" % Customer.create("Kenneth")`

__Output:__

`Customer.create: [Kenneth]`

_Input:_

`puts "Customer.instances: %s" % Customer.instances.inspect`

__Output:__

`Customer.instances: [#<Customer:0x007f2b23eabc08 @name="Jason">, #<Customer:0x007f2b23eaba`

f0 @name="Kenneth">]

__Output:__

`puts "Customer.find('Jason'): %s" % Customer.find("Jason")`

__Output:__

`Customer.find('Jason'): [Jason]`

_Input:_

`puts "Customer.find('Mike'): %s" % Customer.find("Mike")`

__Output:__

`Customer.find('Mike'):    ` 
