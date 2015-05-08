class Product < ActiveRecord::Base
  has_many :orders

  attr_accessible :discription, :name, :price_cents
  monetize :price_cents

  def show_price
    price_cents
  end

end
