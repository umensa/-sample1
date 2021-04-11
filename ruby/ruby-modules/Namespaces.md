#Namespaces
A namespace can be thought of as a container for other items.
These things can be classes, constants, other modules, and more.

##Techer's Notes

**Code Samples**
Multiple levels of modules can be used to namespace items:

`module LaserBots
  module Console
    class Command
    end
  end
``
  module World
    class Player
      attr_reader :name
      def initialize(name)
        @name = name
      end
    end
  end
end
`
The classes, modules, and constants can then be accessed by using the constant resolution operator (::) to get to nested namespaces:

`player = LaserBots::World::Player.new("Jason")
puts player.name`
