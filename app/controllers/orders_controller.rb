class OrdersController < ApplicationController
  load_and_authorize_resource :except => [:show, :index]
  def index
    if current_user.employee_role?
      @orders = Order.all
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
