# Udemy course - Complete Ruby Programmer
# Section 4 - Assignment
# Build a Credentials Collection

def validate(test_string)
  if(!test_string.to_s.empty?)
    return true
  else
    return false
  end
end

creds = []

while true
  puts "Enter site name or 'exit' to exit:"
  site_name = gets.chomp
  if(site_name == 'exit')
    break
  end
  puts "Enter username:"
  user_name = gets.chomp
  puts "Enter password:"
  password = gets.chomp

  if(validate(site_name) && validate(user_name) && validate(password))
    creds.push({ sitename: site_name, username: user_name, password: password})
  else
    puts "Site name, User name, or Password cannot be blank"
  end
end

puts "Your credential list is:"
puts creds
