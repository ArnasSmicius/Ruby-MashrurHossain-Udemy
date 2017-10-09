class User
    
    attr_accessor :name, :email
    
    def initialize(name, email)
        @name = name
        @email = email
    end
    
    def run
        puts "Hey I'm running"
    end
    
#    def get_name
#        @name
#    end
#    
#    def set_name=(name)
#        @name = name
#    end
end

user = User.new("Arnas", "arnas@gmail.com")
user1 = User.new("John", "john@gmail.com")
user2 = User.new("Kevin", "kevin@gmail.com")

#puts User.ancestors

puts user.name
puts "My user's name is #{user.name} and his email is #{user.email}"
user.name = "Petras"
user.email = "petras@gmail.com"
puts "My user's new name is #{user.name} and his new email is #{user.email}"

user.run
user1.run
user2.run

puts user
puts user1
puts user2