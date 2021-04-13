#Enumerable
Enumerable is one of the most widely used modules in Ruby.
The Enumerable module is going to be familiar.
It gives us methods that we've worked in Array and Hash such as map, include?, find, and more.

##Techer's Notes
**Links**
    [Ruby Enumerable Rdoc](https://ruby-doc.org/core-2.2.2/Enumerable.html)

**Code Samples**

Here is our simple `Player` class, which implements the `Comparable` module:

`class Player
  include Comparable
  attr_accessor :name, :score
``
  def <=>(other_player)
    score <=> other_player.score
  end
``
  def initialize(name, score)
    @name, @score = name, score
  end
end
`
Here is our `Game` class, which implements the `Enumerable` module:
`
class Game
  include Enumerable
  attr_accessor :players
  def each(&block)
    players.each(&block)
  end
``
  def initialize
    @players = []
  end
``
  def add_player(player)
    players.push(player)
  end
``
  def score
    score = 0
    players.each do |player|
      score += player.score
    end
    score
  end
end`

Now we create some `Player` and `Game` instances to work with:
`
player1 = Player.new("Jason", 100)
player2 = Player.new("Kenneth", 80)
player3 = Player.new("Nick", 95)
player4 = Player.new("Craig", 20)
``
game1 = Game.new
game1.add_player(player1)
game1.add_player(player2)
``
game2 = Game.new
game2.add_player(player3)
game2.add_player(player4)
`
By defining the `each` method and including the `Enumerable` module, we can now do some fun things, like iterate through players on the `game` instance:
`
game1.each do |player|
  puts "Player: #{player.name}, score: #{player.score}"
end
`
We now get methods for free, such as select, which will let us grab high scores:
`
high_scores = game1.select do |player|
  player.score > 80
end
puts high_scores.inspect
`
We can see if any score is over 80 using the `any?` method:
`
puts game1.any?{|player| player.score > 80}
`
We can also use the `find` method to return the first item that returns true for the block:
`
players = game1.find{|player| player.score > 80}
puts "Players with a score > 80", players.inspect`
