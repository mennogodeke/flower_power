class ProductsController < ApplicationController
  load_and_authorize_resource
  skip_before_action :authenticate_user!, :only => [:index, :show]
  def index #methode om alle producten te laten zien
    @products = Product.all
  end

  def show
    @product = Product.find(params[:id])
  end

  def new #methode om een nieuw product te creeeren
    @product = Product.new
  end

  def edit
    @product = Product.find(params[:id])
  end

  def create #methode om een nieuw product op te slaan
    @product = Product.new(product_params)

    if @product.save
      redirect_to @product
    else
      render 'new'
    end

  end
  
  def update
    @product = Product.find(params[:id])

    if @product.update(product_params)
      redirect_to @product
    else
      render 'edit'
    end
  end

  def destroy #methode om producten te verwijderen
    @product = Product.find(params[:id])
    @product.destroy

    redirect_to products_path
  end

  private
    def product_params #parameters komen in een private method om mysql injectie en x site scripting te voorkomen
      params.require(:product).permit(:product_name, :product_price)
    end
end
