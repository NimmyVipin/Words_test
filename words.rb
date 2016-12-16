

class Word

   def show
    puts "Enter the  length of random string to be generated"
     num=gets.chomp.to_i
     str=(0...num).map { ('a'..'z').to_a[rand(26)] }
     print str

     a=Array.new
     s=(0..num).flat_map{|num| str.to_a.combination(num).map(&:join)}
     s.each do |p|
      a.push(p)
     end 
    puts a

   end
end

obj=Word.new()
obj.show