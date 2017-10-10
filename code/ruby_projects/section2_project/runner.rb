require 'pp'
require_relative 'user' #Import user class

user = User.new 'arnas@gmail.com', 'Arnas'

pp user

user.save