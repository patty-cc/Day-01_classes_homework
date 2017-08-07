class SportsTeam

  attr_reader( :team_name, :players, :coach, :points)
  attr_writer( :team_name, :players, :coach, :points)

  def initialize( team_name, players, coach, points )
    @team_name = team_name
    @players = players
    @coach = coach
    @points = points
  end

  def add_player(name)
    return players.push(name)
  end

  def the_array(player_name)
    for player in players
      if player == player_name
        return true
      else
        return false
      end
    end
  end

  def point_total
    return @points
  end

  def has_won?( team_won)
    if team_won
      @points += 1
    end
  end


  # def squad_name
  #   return @team_name
  # end
  #
  # def player_name
  #   return @players
  # end
  #
  # def coach_name
  #   return @coach
  # end
  #
  # def set_coach_name(name)
  #   return @coach = name
  # end

end
