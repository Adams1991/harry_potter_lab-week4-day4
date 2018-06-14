require("minitest/autorun")
require_relative("../house.rb")

class TestHouse < MiniTest::Test

  def setup
    options = { "name" => "Ravenclaw",
                "logo" => "../public/Ravenclawlogo.jpeg"
              }

    @house = House.new(options)

  end

  def test_name()
    result = @house.name()
    assert_equal("Ravenclaw", result)
  end

  def test_logo()
    result = @house.logo()
    assert_equal("../public/Ravenclawlogo.jpeg", result)
  end

end
