class ScoresController < ApplicationController
  skip_before_filter :verify_authenticity_token
  respond_to :json, :html

  def create
    score = ScoreBuilder.build params
    score.save
    respond_with score, location: nil
  end

  def show
    @score = Score.find(params[:id])
    respond_with @score
  end
end
