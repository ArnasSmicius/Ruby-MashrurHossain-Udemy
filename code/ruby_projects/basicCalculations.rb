puts "Please enter your first number: "
first_number = gets.chomp
puts "Please enter your second number: "
second_number = gets.chomp
puts "The first number multiplied by the second number is #{first_number.to_i * second_number.to_i}"
puts "The first number divided by the second number is #{first_number.to_f / second_number.to_f}"
puts "The first number subtracted by the second number is #{second_number.to_i - first_number.to_i}"
puts "The first number mod by the second number #{first_number.to_i % second_number.to_i}"