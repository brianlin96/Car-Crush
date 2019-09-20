# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
car_attributes = [
    {
          name: 'Lightning McQueen',
          age: 2,
          enjoys: "Winning Races",
        },
        {
          name: 'Doc Hudson',
          age: 4,
          enjoys: "Taking Life Easy",
        },
        {
          name: 'Fillmore',
          age: 12,
          enjoys: "High Times",
    }
]

car_attributes.each do |attributes|
  Car.create(attributes)
end
