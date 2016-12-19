

require "benchmark"
s=(0..4)
time = Benchmark.realtime do
  s.each do |line|
    line+=1
  end
end
puts "Time elapsed #{time*1000} (ms)"