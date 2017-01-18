class OrderItemsController < ApplicationController
  def create
    @order = Order.find(params[:order_id])
    @order_item = @order.order_items.create(order_item_params)
    if @order_item.save
      redirect_to order_path(@order)
    else
      redirect_to order_path(@order)
      flash[:error] = "Aantal is verplicht!"
    end

  end

  private
  def order_item_params
    params.require(:order_item).permit(:order_id, :product_id, :amount, :price)
  end
end
