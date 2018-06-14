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

  def test_first_name()
    result = @hogwart_student.first_name()
    assert_equal("Harry", result)
  end

  def test_last_name()
    result = @hogwart_student.last_name()
    assert_equal("Potter", result)
  end

  def test_house()
    result = @hogwart_student.house()
    assert_equal("Hufflepuff", result)
  end

  def test_age()
    result = @hogwart_student.age()
    assert_equal(13, result)
  end

  def test_pretty_name()
    result = @hogwart_student.pretty_name()
    assert_equal("Harry Potter", result)
  end

end
