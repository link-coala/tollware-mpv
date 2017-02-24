class LineItemsController < ApplicationController
  def index
  end
  def show
  @line_item = LineItem.find(params[:id])
  end

  def new
  @line_item = LineItem.new
  end

  def create
  @line_item = LineItem.new(line_items_params)
  if @line_item.save
  redirect_to @line_item
  else
    render 'new'
  end
end
  private
    def line_items_params
      params.require(:line_items).permit(:order_id, :product_id,:quantity)
    end
end
