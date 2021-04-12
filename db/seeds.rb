# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Market.destroy_all


address = ['rebeca matte 18, santiago', 'merced 10, santiago', 'ohiggins 108, santiago', 'seminario 100, providencia', 'vicuña mackenna 41, providencia']

5.times do |i| 
    Market.create(name: "market n#{i + 1 }", address: address[i] )
end