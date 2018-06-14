require( 'pry' )
require_relative('../models/hogwart_student')
require_relative('../models/house.rb')


house1 = House.new({
  "name" => "Ravenclaw",
  "logo" => "../public/Ravenclawlogo.jpeg"
})

house2 = House.new({
  "name" => "Slytherin",
  "logo" => "../public/Ravenclawlogo.jpeg"
})

house3 = House.new({
  "name" => "Gryffindor",
  "logo" => "../public/Ravenclawlogo.jpeg"
})

house4 = House.new({
  "name" => "Hufflepuff",
  "logo" => "../public/Ravenclawlogo.jpeg"
})

house1.save()
house2.save()
house3.save()
house4.save()

student1 = HogwartStudent.new({
  "first_name" => "Harry",
  "last_name" => "Potter",
  "house_id" => house1.id(),
  "age" => 13
})

student2 = HogwartStudent.new({
  "first_name" => "Ron",
  "last_name" => "Weasley",
  "house_id" => house1.id(),
  "age" => 13
})

student1.save()
student2.save()



binding.pry
nil
