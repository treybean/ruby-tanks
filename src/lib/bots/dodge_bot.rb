require_relative './base_bot'

class DodgeBot < BaseBot

  def choose_action(game_state, shots, battery_position)
    pos = get_my_position(game_state)
    if in_danger_from_sides?(game_state, shots)
      return :down if pos[:row] <= 0
      return :up
    elsif in_danger_from_column?(game_state, shots)
      return :right if pos[:col] <= 0
      return :left
    end
    return :nothing
  end

  def name
    "DodgeBot"
  end

end