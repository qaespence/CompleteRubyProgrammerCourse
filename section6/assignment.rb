# Udemy course - Complete Ruby Programmer
# Section 6 - Assignment
# Write Student Info to CSV

require 'csv'

students = [
  {name: "John Doe", age: 17},
  {name: "John Smith", age: 16},
  {name: "Larry Smith", age: 14},
  {name: "Jane Doe", age: 16},
  {name: "John Doh", age: 17},
  {name: "Janis Something", age: 19},
  {name: "Something Else", age: 18}
]

column_names = students.first.keys
s = CSV.generate do |csv|
  csv << column_names
  students.each do |data|
    csv << data.values
  end
end
File.write('student_data.csv', s)
