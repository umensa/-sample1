#Comparable
For our first stop on the Ruby Core Module tour, we're going to check out the `Comparable` module.
The `Comparable` module allows you to make your classes sortable and gives you convenience methods.

##Techer's Notes
**Links**

    [Ruby Comparable RDoc](https://ruby-doc.org/core-2.2.2/Comparable.html)

**Code Samples**
By including the `Comparable` class and defining the spaceship operator( `<=>` ), we get access to comparison functionality in our classes:

`class Player
  include Comparable
``
  attr_accessor :name, :score
``
  def <=>(other_player)
    score <=> other_player.score
  end
``
  def initialize(name, score)
    @name = name
    @score = score
  end
end
``
player1 = Player.new("Jason", 100)
player2 = Player.new("Kenneth", 80)
``
puts "player1 > player2: %s" % (player1 > player2)
puts "player1 < player2: %s" % (player1 < player2)`
