require 'benchmark/ips'

Benchmark.ips do |x|
  x.report('catch throw') do
    catch :hello do
      throw :hello
    end
  end

  x.report('raise rescue') do
    begin
      fail 'gracefully' 
    rescue => e
    end
    
  end
end
