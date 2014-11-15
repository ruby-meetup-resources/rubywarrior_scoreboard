class Score < ActiveRecord::Base
  belongs_to :warrior
  validates_presence_of :warrior
  attr_accessible :clear_bonus, :level_number, :level_score, :time_bonus, :total_score
end
