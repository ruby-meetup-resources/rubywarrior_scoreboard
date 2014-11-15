module WarriorsHelper
  def min_level
    1
  end
  def max_level
    @warriors.map do |warrior|
      warrior.scores.max_by(&:level_number).level_number
    end.max || 1
  end
end
