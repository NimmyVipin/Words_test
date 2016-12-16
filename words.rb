

class Word

   def show
     puts "Enter the  length of random string to be generated"
     num=gets.chomp.to_i
     string=(0...num).map { ('a'..'z').to_a[rand(26)] }.join
     puts string
   end
end

obj=Word.new()
obj.show