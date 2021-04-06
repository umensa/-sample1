##Build a Monster Class: Part 1##
In this stage, we'll be working towards creating our own class that uses blocks, arrays, hashes, and more. 
In this video, we'll create the shell class that will hold our monster.

#Techer's Notes

**Code Samples**

`class Monster
  attr_reader :name
``
  def initialize(name)
    @name = name
  end
end
`
_Here's how we can initialize it:_

`monster = Monster.new("Fluffy")`

##Build a Monster Class: Part 2##
In this stage, we'll be working towards creating our own class that uses blocks, arrays, hashes, and more. 
In this video, we'll implement some of the actions our monster can perform. 

#Techer's Notes

**Code Samples**

_Here is our Monster class so far:_

`class Monster
  attr_reader :name
``
  def initialize(name)
    @name = name
  end
``
  def say(&block)
    print "#{name} says... "
    yield
  end
end`
