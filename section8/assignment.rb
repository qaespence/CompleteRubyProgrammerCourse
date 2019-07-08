# Udemy course - Complete Ruby Programmer
# Section 8 - Assignment
# Use Student Object to Write to a File

require 'csv'

MAX_GRADE = 100

class Person
  attr_accessor :first_name, :last_name

  def initialize(first, last)
    @first_name = first
    @last_name = last
  end

  def print_name
    "The student name is #{first_name} #{last_name}"
  end
end

class Student < Person

  attr_accessor :grade_score

  def print_score
    "The score for #{first_name} #{last_name} is #{grade_score} out of #{MAX_GRADE}!"
  end

  def save
    File.open('students.csv', 'a') do |entry|
      entry.write(self.to_csv)
    end
  end

  def to_csv
    CSV.generate do |csv|
      csv << [first_name, last_name, grade_score]
    end
  end

end



student1 = Student.new("John","Doe")
student2 = Student.new("Jane","Doe")
student3 = Student.new("James","Kirk")

# p student1.print_name()
# p student2.print_name()
# p student3.print_name()

student1.grade_score = 75
student2.grade_score = 85
student3.grade_score = 95

# p student1.print_score()
# p student2.print_score()
# p student3.print_score()

student1.save
student2.save
student3.save
