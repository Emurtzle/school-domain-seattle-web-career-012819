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
    @roster = roster.keys.sort
    binding.pry
    @roster.each do |k, v|
      binding.pry
      @roster[k] = @roster[k].sort
      #@roster[k].sort_by { |f| f.class == Array ? f.first : f }
    end
  end

end
