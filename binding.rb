# binding
class A
  def initialize
    @a = 'i am inside'
    @cnt = 1
  end

  def get_binding
    b = @cnt
    @cnt += 1
    binding
  end
end

# local_variable_get
# local_variable_set
# local_variables
# receiver

a = A.new

b1 = a.get_binding
p b1.local_variables

b2 = a.get_binding
p b2.local_variables

p b1.local_variable_get(:b)
p b2.local_variable_get(:b)
=begin
=end
