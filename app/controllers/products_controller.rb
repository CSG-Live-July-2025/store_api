class ProductsController < ApplicationController
  def index
    products = Product.all

    render json: products
  end

  def create
    product = Product.new(
      title: params[:title],
      price: params[:price],
      description: params[:description],
      size: params[:size]
    )

    if product.save
      render json: product
    else
      render json: product.errors, status: :unprocessable_entity
    end
  end
end
