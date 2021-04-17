#Marshal
The Marshal class in Ruby Core allows you to convert Ruby objects in to a data stream and back again.

##Techer's Notes
**Links**
    _Marshal documentation_ http://ruby-doc.org/core-2.2.2/Marshal.html

**Code Samples**
Here is our player class with two attributes: name and progress:
`
class Player
  attr_accessor :name, :progress
``
  def initialize(name)
    @name = name
  end
end`

Using the Marshal library, we can output this player object to a string:
`
player = Player.new("Jason")
player.progress = 60
``
player_out = Marshal.dump(player)
``
puts player_out.inspect`

Results in the following:
`
"\x04\bo:\vPlayer\a:\n@nameI\"\nJason\x06:\x06ET:\x0E@progressiA"
`
We can then load it later and the object will have the same data:
`
player_in = Marshal.load(player_out)
``
puts player_in.inspect`
