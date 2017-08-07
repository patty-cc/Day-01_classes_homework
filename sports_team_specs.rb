require('minitest/autorun')
require_relative('./sports_team')

class TestSportsTeam < MiniTest::Test

  def test_sports_team
    team = SportsTeam.new( "Rangers", roster = ["Niko", "Alvez"], "Pedro", 0)
    assert_equal("Rangers", team.team_name())
  end

  def test_player_name
    squad = SportsTeam.new( "Rangers", roster = ["Niko", "Alvez"], "Pedro", 0 )
    assert_equal(["Niko","Alvez"], squad.players())
  end

  def test_coach_name
    manager = SportsTeam.new( "Rangers", roster = ["Niko", "Alvez"], "Pedro",  0)
    manager.coach = "Smith"
    assert_equal("Smith", manager.coach())
  end

  def test_add_player
    update_squad = SportsTeam.new( "Rangers", roster = ["Niko", "Alvez"], "Pedro", 0 )
    assert_equal(["Niko", "Alvez", "Dorrans"], update_squad.add_player("Dorrans"))
  end

  def test_the_array
    check_array = SportsTeam.new( "Rangers", roster = ["Niko", "Alvez"], "Pedro", 0 )
    assert_equal( true, check_array.the_array("Niko"))
  end

  def test_points
    check_array = SportsTeam.new( "Rangers", roster = ["Niko", "Alvez"], "Pedro", 0 )
    assert_equal( 0, check_array.point_total)
  end

  def test_add_points
    sports_team = SportsTeam.new( "Rangers", roster = ["Niko", "Alvez"], "Pedro", 0 )
    sports_team.has_won?(true)
    assert_equal( 1, sports_team.point_total )
  end

  def test_remove_points
    sports_team = SportsTeam.new( "Rangers", roster = ["Niko", "Alvez"], "Pedro", 0 )
    sports_team.has_won?(false)
    assert_equal( 0, sports_team.point_total )
  end

end
