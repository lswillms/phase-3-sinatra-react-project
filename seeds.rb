puts "🌱 Seeding messages..."

15.times do
Product.create(
    name: Faker::Commerce.product_name,
    description:Faker::Lorem.paragraph,
    price: Faker::Commerce.price,
    image_url:Faker::LoremFlickr.image(size: "50x60", search_terms: ['clothing'])
    buyer_id:Faker::Number.between(from 0,to: 15)
)
end

10.times do 
    Buyer.create(
        name:Faker::Name.name,
        email:Faker::Internet.email,
        address:Faker::Address.full_address,
        phone:Faker::PhoneNumber.phone_number
    )
end

puts "✅ Done seeding!"
