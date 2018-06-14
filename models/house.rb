require_relative('../db/sql_runner')

class House

  attr_reader :name, :logo, :id

  def initialize( options )
    @id = options['id'].to_i
    @name = options['name']
    @logo = options['logo']
  end

  def save()
    sql = "INSERT INTO hogwart_students
    (
      name,
      logo
    )
    VALUES
    (
      $1, $2
    )
    RETURNING *"
    values = [@name, @logo]
    house_data = SqlRunner.run(sql, values)
    @id =   house_data.first()['id'].to_i
  end


    # def self.all()
    #   sql = "SELECT * FROM hogwart_students"
    #   students = SqlRunner.run( sql )
    #   result = students.map { |student| HogwartStudent.new( student ) }
    #   return result
    # end
    #
    # def self.find( id )
    #   sql = "SELECT * FROM hogwart_students WHERE id = $1"
    #   values = [id]
    #   student = SqlRunner.run( sql, values )
    #   result = HogwartStudent.new( student.first )
    #   return result
    # end

end
