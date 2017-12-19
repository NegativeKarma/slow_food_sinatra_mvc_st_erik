require 'faker'
categories = ['Starter','Main', 'Dessert']
10.times do
  Product.create(
      name: Faker::Food.dish,
      category: categories.sample,
      price: rand(10..100),
      description: Faker::Lorem.paragraph
  )
end