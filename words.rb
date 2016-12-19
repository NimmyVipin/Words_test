

require 'benchmark'
require 'set'

time = Benchmark.measure do
  WORD_RE = /\w+/

  # Read in the default dictionary (from /usr/share/dict/words),
  # and put all the words into a set

  WORDS = Set.new(File.read('/usr/share/dict/words').scan(WORD_RE))
  puts "Enter the  length of random string to be generated"
  num=gets.chomp.to_i
  str=(0...num).map { ('a'..'z').to_a[rand(26)] }
  s=(0..num).flat_map{|num| str.to_a.permutation(num).map(&:join)}
  puts "valid words matching in dictionary"
                                                                                                                                                                      
  s.each do |line|
    #find all the words in the line that are contained in our dictionary
    recognized = line.scan(WORD_RE).find_all { |term|  WORDS.include? term}
    puts recognized
  end
end

puts "Time elapsed #{time} (ms)"