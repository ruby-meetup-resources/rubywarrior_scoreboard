require 'pry'
class Flog
  def flog_rubywarrior_code
    @parser = (option[:parser] || RubyParser).new
    ast = @parser.process code, "AllCode"
    mass[file] = ast.mass
    mass["AllCode"] = ast.mass
    process ast
    calculate_total_scores
    scores
  end
end
