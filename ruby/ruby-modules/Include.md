#Include
If we want to mix in behavior to a class, we have to use the include method.
Unsurprisingly, based on the name, that will include all of the methods in the module in the class that we’re working with.
In order to make our modules actually do something, it needs to be included in a class.

##Techer's Notes
**Code Samples**
Here is our `Fetcher` module:

`module Fetcher
  def fetch(item)
    puts "I'll bring that #{item} right back!"
  end
end`

Once written, we can include that in the Dog class:

`class Dog
  include Fetcher
  attr_reader :name
  def initialize(name)
    @name = name
  end
end`
`
dog = Dog.new("Fido")
dog.fetch("ball")`
