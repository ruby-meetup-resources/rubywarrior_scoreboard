class ScoresController < ApplicationController
  skip_before_filter :verify_authenticity_token
  respond_to :json

  def create
    level_score = params["level_score"]
    warrior_name = params["warrior_name"]
    time_bonus = params["time_bonus"]
    clear_bonus = params["clear_bonus"] || 0
    total_score = params["total_score"]
    level_number = params["level_number"]

    warrior = Warrior.find_or_create_by_name(warrior_name)
    score = warrior.scores.find_or_initialize_by_level_number(level_number)
    score.time_bonus = time_bonus
    score.clear_bonus = clear_bonus
    score.total_score = total_score
    score.level_score = level_score

    score.save
    respond_with score, location: nil
  end
end
