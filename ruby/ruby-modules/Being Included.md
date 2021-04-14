#Being Included
One thing that’s really neat about the include method when using a module is that it gives us a way to hook in to that behavior and do something when a module is included in a class.
We can use this to further extend the functionality in our modules.
For example, when a module is included in a class, we could use that to run methods, write methods, or include other modules. 

##Techer's Notes
**Code Samples**
First, we modify our `Fetcher` module to have an `included` class method. This method defines an attribute on the class it is included in called fetch_count.

`module Fetcher
  def self.included(klass)
    attr_accessor :fetch_count
  end`

The `fetch` method is then modified to say how many times the fetch count has occurred. The `||=` operator is called the conditional assignment operator. It conditionally sets the value of `@fetch_count` to 0 if we haven't accessed it yet.

`  def fetch(item)
    @fetch_count ||= 0
    @fetch_count += 1
    puts "[#{@name}, Fetch count: #{@fetch_count}] I'll bring that #{item} right back!"
  end
end`
`
``
class Dog
  include Fetcher
  def initialize(name)
    @name = name
  end
end
``
dog = Dog.new("Fido")
dog.fetch("ball")
dog.fetch("toy")
`
Now, when we create a new `Dog` instance and run the `fetch` method, we get the following output:

`[Spot, Fetch count: 1] I'll bring that ball right back!       
[Spot, Fetch count: 2] I'll bring that toy right back!`

This `fetch_count` variable is specific to each Dog instance:

`dog2 = Dog.new("Spot")
dog2.fetch("ball")
dog2.fetch("toy")`

So running that produces the following output:

`[Fido, Fetch count: 1] I'll bring that ball right back!       
[Fido, Fetch count: 2] I'll bring that toy right back!
[Spot, Fetch count: 1] I'll bring that ball right back!       
[Spot, Fetch count: 2] I'll bring that toy right back!`
