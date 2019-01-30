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
    @roster.each do |k, v|
      binding.pry
      @roster[k].sort
    end
  end

end
