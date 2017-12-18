
Given(/^the following products exist$/) do |table|
  table.hashes.each do |product|
    Product.create(product)
  end
end

When(/^I visit the page$/) do
  visit '/'
end

Given(/^I click "([^"]*)" on "([^"]*)"$/) do |order, dish_name|
  @dish = Product.find_by(name: dish_name)
  within("#product-#{@dish.id}") { click_button order }
end

Then(/^there should be an order made for me$/) do
  @order = Order.last
  expect(@order).to_not be nil
end

Then(/^"([^"]*)" should be in the Order$/) do |dish_name|
  product = @dish
  expect(@order.order_items[0].product.name).to eq dish_name
end

Then(/^I should be notified "([^"]*)"$/) do |text|
  expect(page).to have_content text
end
