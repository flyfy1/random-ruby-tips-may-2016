class ExplicitEval
  def initialize
    @binding = binding
  end

  def implicit(expr)
    puts expr
    eval(expr, @binding)
  end

  def explicit(expr)
    res = eval(expr, @binding)
    puts "#{expr}: #{res}"
    res
  end
end
