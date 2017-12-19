require 'faker'
category = ['Starter']
2.times do
  Product.create(
      name: Faker::Food.dish,
      category: category.sample,
      price: rand(10..100),
      description: Faker::Lorem.paragraph
  )
end

category = ['Main']
2.times do
  Product.create(
      name: Faker::Food.dish,
      category: category.sample,
      price: rand(10..100),
      description: Faker::Lorem.paragraph
  )
end

category = ['Dessert']
2.times do
  Product.create(
      name: Faker::Dessert.variety,
      category: category.sample,
      price: rand(10..100),
      description: Faker::Lorem.paragraph
  )
end
