class ProductsController < ApplicationController
  def index
    products = Product.all

    render json: products
  end

  def create
    products = Product.create(
      name: params[:name],
      price: params[:price]
    )

    render json: products
  end
end
