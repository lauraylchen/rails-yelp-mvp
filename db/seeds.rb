puts 'Cleaning the db...'
Restaurant.destroy_all

puts 'Creating 5 restaurants...'

5.times do
  restaurant = Restaurant.create!(
    name: Faker::Restaurant.name,
    address: Faker::Address.full_address,
    phone_number: Faker::PhoneNumber.cell_phone,
    category: %w[chinese italian japanese french belgian].sample
  )
  puts "Restaurant# #{restaurant.id} was created."
end
