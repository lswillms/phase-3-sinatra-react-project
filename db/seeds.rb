puts "🌱 Seeding products..."

15.times do
    Product.create(
        name: Faker::Commerce.product_name,
        description:Faker::Lorem.paragraph,
        price: Faker::Commerce.price,
        image_url: Faker::LoremFlickr.image
    )
    
    10.times do 
        Seller.create(
            seller_name:Faker::Name.name,
            email:Faker::Internet.email,
            address:Faker::Address.full_address,
            phone_number:Faker::PhoneNumber.phone_number
        )
    end
end

puts "✅ Done seeding!"
