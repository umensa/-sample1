#Class Set Up
Now that we now how modules work, we’re going to write a simple program that simulates keeping inventory at a small retail store.
The store sells shirts, pants, and accessories.
We’re going to put everything together using modules, include, extend, and friends.
Make sure to follow along using Workspaces.

##Techer's Notes
**Code Samples**
First, we'll create our module that will hold our inventory methods
`
module Inventoryable
end
``
class Shirt
  attr_accessor :attributes
``
  def initialize(attributes)
    @attributes = attributes
  end
end
``
class Pant
  attr_accessor :attributes
``
  def initialize(attributes)
    @attributes = attributes
  end
end
``
class Accessory
  attr_accessor :attributes
``
  def initialize(attributes)
    @attributes = attributes
  end
end
``
shirt1 = Shirt.new(name: "MTF", size: "L")
shirt2 = Shirt.new(name: "MTF", size: "M")`
