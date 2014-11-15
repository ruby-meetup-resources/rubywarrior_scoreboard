class ScoresController < ApplicationController
  respond_to :json

  def create
    level_score = params["level_score"]
    warrior_name = params["warrior_name"]
    time_bonus = params["time_bonus"]
    clear_bonus = params["clear_bonus"] || 0
    total_score = params["total_score"]
    level_number = params["level_number"]
  end
end
