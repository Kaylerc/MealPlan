class OrdersController < ApplicationController
  def new
    @order = Order.new
    @product = Product.find(params[:product_id])
  end

  def create
    service_fee = 5.0
    @product = Product.find(params[:product_id])
    @order = Order.new(
      product_id: @product.id,
      final_price: @product.price.to_f + service_fee
    )
    @order.save
    redirect_to product_order_path(@product.id, @order)
  end

  def show
    @order = Order.find(params[:id])
    @product = Product.find(@order.product_id)
  end

private

def order_params
  params.require(:order).permit()

end

end
