require "pry"


class School
  attr_accessor :name, :roster

  def initialize(name)
    @name = name
    @roster = {}
  end

  def add_student(student_name, grade)
    if @roster.keys.include?(grade)
      @roster[grade] << student_name
    else
      @roster[grade] = [student_name]
    end
  end

  def grade(grade_num)
    @roster[grade_num]
  end

  def sort
    new_roster = {}
    #binding.pry
    @roster.each do |k, v|
      new_roster[k] = v.sort

        binding.pry
      #@roster[k].sort_by { |f| f.class == Array ? f.first : f }
    end
    new_roster
  end

end
