class CreateOrder < ActiveRecord::Migration[4.2]
  def change
    create_table :orders
  end
end
