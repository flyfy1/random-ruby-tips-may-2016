require 'benchmark/ips'

Benchmark.ips do |x|
  a = (1...10000).to_a
  b = (5000...20000).to_a
end
