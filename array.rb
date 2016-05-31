require './explicit_eval.rb'

e = ExplcitEval.new

e.implicit 'a = [1,2,3]'
e.implicit 'b = [1,2,4]'
e.explicit 'a + b'
e.explicit 'a - b'
e.explicit 'a * 3'
e.explicit 'a * ","'
e.explicit 'a & b'
e.explicit 'a | b'
