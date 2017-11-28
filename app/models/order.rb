class Order < ActiveRecord::Base
  # Remember to create a migration!
  has_many :order_items
end
