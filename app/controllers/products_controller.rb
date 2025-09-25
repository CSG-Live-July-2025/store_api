class ProductsController < ApplicationController
  after_action :send_email, only: [:create]
  before_action :set_product, only: [:show, :update, :destroy]
  
  def index
    @product = Product.all

    render json: @products
  end

  def show
    render json: @product
  end

  def create
    @product = Product.new(
      title: params[:title],
      price: params[:price],
      description: params[:description],
      size: params[:size],
      supplier_id: params[:supplier_id]
    )

    if @product.save
      render json: @product
    else
      render json: @product.errors, status: :unprocessable_entity
    end
  end

  def update
    @product.update(
      title: params[:title] || @product.title,
      price: params[:price] || @product.price,
      description: params[:description] || @product.description,
      size: params[:size] || @product.size,
      supplier_id: params[:supplier_id] || @product.supplier_id
    )

    render json: @product
  end

  def destroy
    @product.destroy

    render json: { message: "Product deleted..." }
  end

  private 

  def send_email
    puts "-----------"
    puts "Mimicing sending an email confirmation..."
    puts "-----------"
  end

  def set_product
    @product = Product.find(params[:id])    
  end
end
