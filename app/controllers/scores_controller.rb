class ScoresController < ApplicationController
  skip_before_filter :verify_authenticity_token
  respond_to :json

  def create
    score = ScoreBuilder.build params
    score.save
    respond_with score, location: nil
  end
end
