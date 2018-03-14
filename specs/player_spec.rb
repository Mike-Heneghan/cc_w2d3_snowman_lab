require("minitest/autorun")
require_relative("../player.rb")

class TestPlayer < MiniTest::Test

def setup
  @player1 = Player.new("Mike")
  @player2 = Player.new("Mariana")
end

def test_of_player_creation
  name_given = @player1.name()
  lives_given = @player1.lives()
  assert_equal("Mike", name_given)
  assert_equal(6, lives_given)
end

end
