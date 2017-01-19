class OrderItemsController < ApplicationController
  def create
    @order = Order.find(params[:order_id]) #eerst word de desbetreffende bestelling opgezocht
    @order_item = @order.order_items.create(order_item_params) #vervolgens worden er items aan toegevoegd
    if @order_item.save
      redirect_to order_path(@order) #wanneer het item word opgeslagen word deze weergegeven
    else
      redirect_to order_path(@order)
      flash[:error] = "Aantal is verplicht en moet hoger zijn dan 1" # wanneer het item niet word opgeslagen word er een error weergegeven
    end

  end

  private
  def order_item_params
    params.require(:order_item).permit(:order_id, :product_id, :amount, :price) #parameters komen in een private functie, om sql injectie en xsite scritping te voorkomen
  end
end
