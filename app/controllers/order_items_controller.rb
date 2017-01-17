class OrderItemsController < ApplicationController
  def create
    @order = Order.find(params[:order_id])
    @order_item = @order.order_items.create(order_item_params)
    redirect_to order_path(@order)
  end

  private
  def order_item_params
    params.require(:order_item).permit(:order_id, :product_id, :amount, :price)
  end
end
