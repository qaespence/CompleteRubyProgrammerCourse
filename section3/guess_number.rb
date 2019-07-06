# Udemy course - Complete Ruby Programmer
# Section 3 - Guess Number game

magic_number = rand 4

puts "Welcome to the Guess a Number game!\n\n"

puts "Guess from 0 to 3? "
user_guess = gets.chomp.to_i

if user_guess > 3
  puts "Your guess is too high!"
elsif user_guess < 0
  puts "Your guess is too low!"
else
  guess_message = "The magic number was #{magic_number}"
  if magic_number == user_guess
    puts "Yay! You win!  #{guess_message}"
  else
    puts "Sorry, that's not it.  Please try again:"
    user_guess = gets.chomp.to_i
    if magic_number == user_guess
      puts "Yay! You win!  #{guess_message}"
    else
      puts "Sorry, that's not it.  #{guess_message}"
    end
  end
end
