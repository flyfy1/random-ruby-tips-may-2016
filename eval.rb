# eval(string [, binding [, filename [,lineno]]]) → obj

=begin
# 1. eval('a = [1,2,3]', TOPLEVEL_BINDING) is not adding variable to the 
#    TOPLEVEL directly
eval('a = [1,2,3]', TOPLEVEL_BINDING)
# puts a  => this would be error

# 2. filename, lineno => useful for error reporting
# eval('puts a', binding, 'random_file.rb', 42)

# 3. ExplcitEval
class ExplcitEval
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

evaluator = ExplcitEval.new
evaluator.implicit('a = 1')
evaluator.implicit('b = 2')
evaluator.explicit('a + b')
=end
