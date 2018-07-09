# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Movie.destroy_all
 
100.times do |index|
  Movie.create!(title: Faker::Lorem.sentence(3, false, 0).chop,
                director: Faker::Name.name,
                storyline: Faker::Lorem.paragraph,
                watched_on: Faker::Time.between(4.months.ago, 1.week.ago))
end
 
p "Created #{Movie.count} movies"
