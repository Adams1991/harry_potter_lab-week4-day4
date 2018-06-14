require("minitest/autorun")
require_relative("../hogwart_student.rb")

class TestHogwartStudent < MiniTest::Test

  def setup
    options = { "id" => 1,
                "first_name" => "Harry",
                "last_name" => "Potter",
                "house" => "Hufflepuff",
                "age" => 13}

    @hogwart_student = HogwartStudent.new(options)
  end

end
