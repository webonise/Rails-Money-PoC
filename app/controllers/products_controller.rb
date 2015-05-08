class ProductsController < ApplicationController

  def index
    @products = Product.all
  end

  def new
    @product = Product.new
  end

  def create
    Product.create(params[:product])
    redirect_to products_path
  end

  def show_convertor

  end

  def convert_currency
    @converted_amt = Money.new("#{params[:amount]}_00",
                               params[:from]).exchange_to(params[:to])
  end
end
