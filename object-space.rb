# http://ruby-doc.org/stdlib-2.3.1/libdoc/objspace/rdoc/ObjectSpace.html
class A
end

class B < A
end

module M
end

class C
  include M
end

class D < C
end

require './explicit_eval.rb'

e = ExplicitEval.new
e.explicit 'ObjectSpace.each_object(Class).select {|kls| kls < M }'
# http://stackoverflow.com/questions/2393697/look-up-all-descendants-of-a-class-in-ruby
