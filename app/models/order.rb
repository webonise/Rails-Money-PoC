class Order < ActiveRecord::Base
  belongs_to :product

  register_currency :eur
  attr_accessible :quantity, :discount_cents, :total_cents
  monetize :discount_cents, with_currency: :gbp
  monetize :total_cents, disable_validation: true

  def total_amount
    product.price_cents - discount_cents
  end
end
