module WarriorsHelper
  def min_level
    1
  end

  def max_level
    @max_level ||= @warriors.map do |warrior|
      warrior.scores.max_by(&:level_number).level_number
    end.max || 1
  end

  def print_catchup_cells(score)
    if score.level_number != 1
      (score.level_number - 1).times.map do
        "<td></td>"
      end.join.html_safe
    end

  end

  def print_following_cells(score, index)
    if score.level_number < max_level
      (max_level - score.level_number).times.map do
        "<td></td>"
      end.join.html_safe
    end

  end
end
