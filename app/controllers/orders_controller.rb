class OrdersController < ApplicationController
  load_and_authorize_resource :except => [:show, :index]
  def index
    @store1 = Order.where(:store_id => 1).all
    @store2 = Order.where(:store_id => 2).all
    @store3 = Order.where(:store_id => 3).all
    @store4 = Order.where(:store_id => 4).all
    if current_user.employee_role?
      @orders = Order.order(:store_id).all
      respond_to do |format|
        format.html
        format.pdf do
          render pdf: "bestellingen"
        end
      end
    elsif current_user.customer_role? || current_user.employee_role == false
      @orders = Order.where(customer_id: current_user.id)
    end
  end

  def show
    @order = Order.find(params[:id])
    @products = Product.all
    @total = 0
    @order.order_items.each do |i|
      @total += i.product.product_price * i.amount
    end
    respond_to do |format|
      format.html
      format.pdf do
        render pdf: "bestelling#{@order.id}"
      end
    end
  end

  def new
    @order = Order.new
    @stores = Store.all
  end

  def edit
    @order = Order.find(params[:id])
    @stores = Store.all
  end

  def create
    @order = Order.new(order_params)

    if @order.save
      redirect_to @order
    else
      render 'new'
    end

  end

  def update
    @order = Order.find(params[:id])

    if @order.update(order_params)
      redirect_to @order
    else
      render 'edit'
    end
  end

  def destroy
    @order = Order.find(params[:id])
    @order.destroy

    redirect_to orders_path
  end

  private
  def order_params
    params.require(:order).permit(:store_id, :customer_id, :employee_id, :ready, :payed)
  end
end
