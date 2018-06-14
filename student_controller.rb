require( 'sinatra' )
require( 'sinatra/contrib/all' )
require( 'pry-byebug' )
require_relative( './models/hogwart_student.rb' )
also_reload( './models/*')

# INDEX
get('/students') do
  @students = HogwartStudent.all()
  erb( :index )
end

get ('/students/new') do
  erb( :new )
end

post ('/students') do
  @student = HogwartStudent.new(params)
  @student.save()
erb ( :create )
end
