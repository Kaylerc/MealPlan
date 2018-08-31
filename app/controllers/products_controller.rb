class ProductsController < ApplicationController
  def new

  end

  def index
    @products = Product.all
  end

  def show
    @product = Product.find(params[:id])
  end

  def edit
  end
end
