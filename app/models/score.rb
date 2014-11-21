class Score < ActiveRecord::Base
  belongs_to :warrior
  attr_accessible :clear_bonus, :level_number, :level_score,
                  :time_bonus, :total_score, :source_code, :tower

  validates_presence_of :warrior
  validates_numericality_of :level_number, greater_than_or_equal_to: 1, presence: true

  def combined_score
    [clear_bonus, level_score, time_bonus].compact.reduce(&:+)
  end
end
