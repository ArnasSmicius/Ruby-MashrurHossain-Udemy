dial_book = {
    "washington" => "202",
    "newyork" => "212",
    "chicago" => "312",
    "losangeles" => "213",
    "montgomery" => "334",
    "juneau" => "907",
    "phoenix" => "602",
    "littlerock" => "501",
    "sacramento" => "916",
    "denver" => "302"
    }

#Printing available city names
def displayCityNames(dial_book)
    puts "Available options:"
    dial_book.each{|k, v| puts k}
end

#Printing area code if it is available
def displayAreaCode(dial_book, userChoice)
    if dial_book.include?(userChoice.downcase)
        puts "#{userChoice} area code is #{dial_book[userChoice.downcase]}"
    else
        puts "#{userChoice} is not found in our dial book"
    end
end

loop do
    puts "Do you want to lookup a city name?(Y/N)"
    answer = gets.chomp
    if answer.upcase != "Y"
        break
    end
    displayCityNames(dial_book)
    puts "Please enter city name:"
    cityChosen = gets.chomp
    displayAreaCode(dial_book, cityChosen)
end