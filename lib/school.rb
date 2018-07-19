# code here!
require 'pry'
class School

  def initialize(school_name)
    @school = school_name
    @roster = {}
    # binding.pry
  end

  attr_accessor :roster

  def add_student(student_name, grade)
    if !@roster.has_key?(grade)
      @roster[grade] = []
      @roster[grade] << student_name
    else
      @roster[grade] << student_name
    end
  end

  def grade(grade)
    @roster[grade]
  end

  def sort
    roster.each_value {|array| array.sort!}

    
  end

end
# pablo = School.new("Test")
#
# binding.pry
# false
