# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

5.times do
  restaurant = Restaurant.new(
    name: Faker::Name.first_name,
    address: Faker::Address.full_address,
    category: ["chinese", "italian", "japanese", "french", "belgian"].sample,
    phone_number: Faker::PhoneNumber.phone_number
  )
  restaurant.save!
end

5.times do
  review = Review.new(
    content: Faker::TwinPeaks.quote,
    rating: [0, 1, 2, 3, 4, 5].sample,
    restaurant_id: [0, 1, 2, 3, 4, 5].sample
  )
  review.save!
end
