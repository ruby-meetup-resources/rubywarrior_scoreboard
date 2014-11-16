class Flog
  def flog_rubywarrior_code(code)
    @parser = (option[:parser] || RubyParser).new
    ast = @parser.process code, "AllCode"
    mass["AllCode"] = ast.mass
    process ast
    calculate_total_scores
    [calls, total_score]
  end
end
