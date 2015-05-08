class AddTotalToOrder < ActiveRecord::Migration
  def change
    add_money :orders, :total
  end
end
