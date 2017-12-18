class OrderItem < ActiveRecord::Base
  # Remember to create a migration!
  belongs_to :product
  belongs_to :order
end
