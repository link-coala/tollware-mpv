class ProductsController < ApplicationController
  def home
  
  @product = Product.all
  @order = Order.all
  end

end
