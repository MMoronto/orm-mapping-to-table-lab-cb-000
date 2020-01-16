class Student

  attr_accessor :name, :grade, :id 
  
  def initialize(name, grade)
    @name = name
    @grade = grade
  end
  
  def id 
    @id 
  end 
  
  def self.create_table
    sql = <<-SQL
      CREATE TABLE IF NOT EXISTS students (
        id INTEGER PRIMARY KEY,
        name TEXT,
        grade TEXT 
        )
      SQL
    DB[:conn].execute(sql)
  end 
  
  def self.drop_table
    sql = 
  end   
  
end
