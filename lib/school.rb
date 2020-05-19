class School
  def initialize(name)
    @name = name
    @roster = {}
  end
  
  def roster
    @roster
  end
  
  def add_student(name, grade)
    @roster[grade] = [] unless @roster.keys.include?(grade)
    @roster[grade].push(name)
  end
  
  def grade(grade)
    @roster[grade]
  end
  
  def sort
    @roster.each{|key, value| @roster[key] = value.sort}
  end
end