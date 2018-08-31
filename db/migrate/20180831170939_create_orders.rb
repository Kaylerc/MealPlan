class CreateOrders < ActiveRecord::Migration[5.2]
  def change
    create_table :orders do |t|
      t.string :final_price
      t.integer :user_id
      t.integer :product_id


      t.timestamps
    end
  end
end
