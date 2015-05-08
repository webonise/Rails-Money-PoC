class AddDiscountMoneyToOrder < ActiveRecord::Migration
  def change
    add_money :orders, :discount
  end
end
