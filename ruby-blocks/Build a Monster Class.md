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

##Build a Monster Class: Part 3##
In this stage, we'll be working towards creating our own class that uses blocks, arrays, hashes, and more. 
In this video, we'll print out a scoreboard of our monster's actions.

#Techer's Notes

**Code Samples**

_Here is our final Monster class:_

`class Monster
  attr_reader :name, :actions
``
  def initialize(name)
    @name = name
    @actions = {
      screams: 0,
      scares: 0,
      runs: 0,
      hides: 0
    }
  end
``
  def say(&block)
    print "#{name} says... "
    yield
  end
``
  def print_scoreboard
    puts "------------------------------"
    puts "#{name} scoreboard"
    puts "------------------------------"
    puts "- Screams: #{actions[:screams]}"
    puts "- Scares: #{actions[:scares]}"
    puts "- Runs: #{actions[:runs]}"
    puts "- Hides: #{actions[:hides]}"
    puts "------------------------------"
  end
``
  def scream(&block)
    actions[:screams] += 1
    print "#{name} screams! "
    yield
  end
``
  def scare(&block)
    actions[:scares] += 1
    print "#{name} scares you! "
    yield
  end
``
  def run(&block)
    actions[:runs] += 1
    print "#{name} runs! "
    yield
  end
``
  def hide(&block)
    actions[:hides] += 1
    print "#{name} hides! "
    yield
  end
end
`
_And here is how we can use it:_
`
monster = Monster.new("Fluffy")
monster.say { puts "Welcome to my home." }
``
monster.scream do
  puts "BOO!"
end
``
monster.scare do
  puts "Go away!"
end
``
monster.run do
  puts "Going to get you!"
end
``
monster.hide do
  puts "Running away and hiding!"
end
``
puts "\n"
monster.print_scoreboard`

##Build a Monster Class: Part 4##
In this stage, we'll be working towards creating our own class that uses blocks, arrays, hashes, and more. 
In this video, we'll learn a neat trick about yielding to blocks.

#Techer's Notes


**Code Samples**

The following code will return the current object in context to a block:

`yield self if block_given?`

This is useful in cases where you would like to have access to the class inside of a block.
