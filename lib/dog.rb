# Add your code here
class Dog

     attr_reader :name

     @@all = []

     def initialize(name)
          @name = name
          save  #this method (save from below) gets called at initialization when new dog is created
     end

     def self.all
          @@all
     end

     def self.clear_all
          @@all.clear
     end
     
     # puts out the names of each dog (via class method)
     # hint - initially :name was not in reader, writer or accessor.  
     # needed an attr_reader to be able to read at initialization for this method
     def self.print_all              
          @@all.each do | dog |
               puts dog.name
          end
     end

     def save 
          @@all << self
          @@all
     end

       
end
