class School

  attr_reader :name
  attr_accessor :roster

  def initialize(name)
    @name = name
    @roster = {}

  end

  def add_student(name, grade)
    @roster[grade] = [] if @roster[grade].nil?
    @roster[grade] << name
  end

  def grade(grade)
    @roster[grade]
  end

  def sort
    @roster.each do |grade, name_array|
      @roster[grade] = name_array.sort
    end
    @roster
  end

end
