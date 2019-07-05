# <summary>
# Udemy course - Complete Ruby Programmer
# Section 2 - Assignment
# Create a Ruby file that contains code which will print your age 3 times:
# - in days
# - in hours
# - in minutes
# </summary>

puts "Basic calculations:"
puts "Age in days:"
puts (37*365)

puts "Age in hours:"
puts (37*365*24)

puts "Age in minutes:"
puts (37*365*24*60)

# Bonus
require 'date'
puts "Using Date fucntionality:"
days = DateTime.now.mjd - DateTime.parse("01-01-1982").mjd

puts "Age in days:"
puts (days.to_i)

puts "Age in hours:"
puts (days.to_i*24)

puts "Age in minutes:"
puts (days.to_i*24*60)
