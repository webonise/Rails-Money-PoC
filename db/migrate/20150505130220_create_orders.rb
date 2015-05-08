class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.integer :quantity
      t.references :product

      t.timestamps
    end
    add_index :orders, :product_id
  end
end
