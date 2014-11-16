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
    if @score.source_code.present?
      @flog_score = Flog.new.flog_rubywarrior_code(@score.source_code || "")
    end
    respond_with @score
  end
end
