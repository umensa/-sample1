# frozen_string_literal: true

# class Player
class Player
  include Comparable
  attr_accessor :name, :score

  def <=>(other)
    score <=> other.score
  end

  def initialize(name, score)
    @name = name
    @score = score
  end
end

player1 = Player.new('Mohamed', 100)
player2 = Player.new('Kenneth', 80)

puts 'player1 > player2: %s' % (player1 > player2)
puts 'player1 < player2: %s' % (player1 < player2)
