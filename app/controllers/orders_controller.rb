class OrdersController < ApplicationController
  before_filter :fetch_product
  def index
    @orders = @product.orders.all
  end

  def new
    @order = Order.new
  end

  def create
    order = @product.orders.create(params[:order])
    order.total_cents = 1200
    order.save
    redirect_to products_path
  end

  private

  def fetch_product
    @product = Product.find(params[:product_id])
  end
end
