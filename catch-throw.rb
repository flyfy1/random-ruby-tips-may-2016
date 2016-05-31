catch (:sth_else) do
  catch (:sth) do
    puts 'before_throw'
    
    throw :sth_else

    puts 'this would not execute'
  end

  puts 'this would not execute either'
end

puts 'logic continues here'
