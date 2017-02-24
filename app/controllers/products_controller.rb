class ProductsController < ApplicationController

  def index
  @products = Product.all
  end


  def home
  @product = Product.all
  @order = Order.all
  @line = LineItem.all
  end
  
  def new
  @product = Product.new
  end

  def create
  @product = Product.new(product_params)
  if @product.save
  redirect_to @product
  else
    render 'new'
  end
end
  def show
    @product = Product.find(params[:id])
  end


  def destroy
    @product = Product.find(params[:id])
    @product.destroy
    redirect_to products_home_path
 end

def destroy_all
    @product = Product.all
    @product.destroy_all
end  

  
  private
    def product_params
      params.require(:product).permit(:name, :price)
    end
end