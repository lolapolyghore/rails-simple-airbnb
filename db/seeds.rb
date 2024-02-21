# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

Flat.create!(
  name: 'Light & Spacious Garden Flat London',
  address: '10 Clifton Gardens London W9 1DT',
  description: 'A lovely summer feel for this spacious garden flat. Two double bedrooms, open plan living area, large kitchen and a beautiful conservatory',
  price_per_night: 75,
  number_of_guests: 3
)

Flat.create!(
  name: 'Party House in Ibiza',
  address: '10 teuf Street Ibiza W9 1DT',
  description: 'Located on the outskirts of Sant Antonio, Villa Saladeta is found on your way to Cala Salada and this is where your dream home awaits.',
  price_per_night: 200,
  number_of_guests: 12
)

4.times do
  Flat.create!(
    name: ['Modern Loft', 'Cozy Cottage', 'Luxury Apartment', 'Rustic Cabin'].sample,
    address: "#{rand(1..100)} #{['Main St', 'Broadway', 'Elm St', 'Park Ave'].sample}, #{['New York', 'Los Angeles', 'Chicago', 'San Francisco'].sample}, #{['NY', 'CA', 'IL', 'CA'].sample}",
    description: ['Beautifully designed space with breathtaking views.', 'Quaint getaway perfect for a weekend retreat.', 'Experience luxury living at its finest.', 'Escape to nature and unwind in style.'].sample,
    price_per_night: rand(50..500),
    number_of_guests: rand(1..10)
  )
end
