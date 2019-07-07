# Udemy course - Complete Ruby Programmer
# Section 5 - Assignment
# Find Students by Name

students = [
  {name: "John Doe", age: 17},
  {name: "John Smith", age: 16},
  {name: "Larry Smith", age: 14},
  {name: "Jane Doe", age: 16},
  {name: "John Doh", age: 17},
  {name: "Janis Something", age: 19},
  {name: "Something Else", age: 18}
]

def find_by_name(students_arr, name)
  students_arr.select do |student|
    student[:name].include? name
  end
end

p find_by_name(students, "John")
puts "----------"
p find_by_name(students, "Smith")
puts "----------"
p find_by_name(students, "Something")
puts "----------"
p find_by_name(students, "Nothing")
