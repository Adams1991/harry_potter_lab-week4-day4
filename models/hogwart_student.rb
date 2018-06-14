require_relative('../db/sql_runner')

class HogwartStudent

  attr_reader :first_name, :last_name, :house_id, :age, :id

  def initialize( options )
    @id = options['id'].to_i
    @first_name = options['first_name']
    @last_name = options['last_name']
    @house_id = options['house_id'].to_i
    @age = options['age'].to_i
  end

  def pretty_name()
    return "#{@first_name} #{@last_name}"
  end

  def save()
    sql = "INSERT INTO hogwart_students
    (
      first_name,
      last_name,
      house_id,
      age
    )
    VALUES
    (
      $1, $2, $3, $4
    )
    RETURNING *"
    values = [@first_name, @last_name, @house, @age]
    student_data = SqlRunner.run(sql, values)
    @id =   student_data.first()['id'].to_i
  end


    def self.all()
      sql = "SELECT * FROM hogwart_students"
      students = SqlRunner.run( sql )
      result = students.map { |student| HogwartStudent.new( student ) }
      return result
    end

    def self.find( id )
      sql = "SELECT * FROM hogwart_students WHERE id = $1"
      values = [id]
      student = SqlRunner.run( sql, values )
      result = HogwartStudent.new( student.first )
      return result
    end

    def house()
      sql = 'SELECT * FROM houses WHERE id = $1'
      values = [@house_id]
      house = SqlRunner.run(sql, values)
      return House.new(house[0])
    end

end
