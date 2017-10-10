module Destructable #Interface
    def destroy(anyobject)
        puts "I will destroy the object"
    end
end


class User
    include Destructable
    
    attr_accessor :name, :email
    
    def initialize(name, email)
        @name = name
        @email = email
    end
    
    def run
        puts "Hey #{@name} is running"
    end
    
    def self.identify_yourself #Static method
        puts "Hey I am a class method"
    end
    
#    def get_name
#        @name
#    end
#    
#    def set_name=(name)
#        @name = name
#    end
end

class Buyer < User
    def run
        puts "I'm a buyer, and I'm running from your shop"
    end
end

class Seller < User
    
end

class Admin < User
    
end

#user = User.new("Arnas", "arnas@gmail.com")
#user1 = User.new("John", "john@gmail.com")
#user2 = User.new("Kevin", "kevin@gmail.com")
#
##puts User.ancestors
#
#puts user.name
#puts "My user's name is #{user.name} and his email is #{user.email}"
#user.name = "Petras"
#user.email = "petras@gmail.com"
#puts "My user's new name is #{user.name} and his new email is #{user.email}"
#
#user.run
#user1.run
#user2.run
#
#puts user
#puts user1
#puts user2

User.identify_yourself
buyer1 = Buyer.new("John Doe", "john@example.com")
buyer1.run
seller1 = Seller.new("Seller", "seller@gmail.com")
seller1.run
admin1 = Admin.new("Admin", "admin@gmail.com")
admin1.run

buyer1.destroy("myname")