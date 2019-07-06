# Udemy course - Complete Ruby Programmer
# Section 3 - Assignment
# Build a User Input Validator

def input_validator(value)
  if value.is_a?(String)
    puts("Are you sure that's a number?")
  elsif value.is_a?(Numeric) && value > 10
    puts("Great! That is a number greater than 10.")
  elsif value < 10
    puts("That isn't a number greater than 10.")
  end
end

puts "Please enter a number greater than 10:"
input_num = gets.chomp.to_i
input_validator(input_num)
