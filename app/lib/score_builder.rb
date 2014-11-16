module ScoreBuilder
  module_function

  def build(params)
    warrior_name = params["warrior_name"]
    level_number = params["level_number"]

    warrior = Warrior.find_or_initialize_by_name(warrior_name)
    score = warrior.scores.find_or_initialize_by_level_number(level_number)
    score.warrior = warrior
    score.assign_attributes params.slice *[
      :time_bonus,
      :clear_bonus,
      :total_score,
      :level_score,
    ]
    score.clear_bonus ||= 0
    score
  end

end
