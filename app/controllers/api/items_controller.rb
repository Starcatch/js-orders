class Api::ItemsController < ApplicationController
 

 
  def index
    @items = Item.all

    render json: @items, status: 200
  end

  
  def show
    @item = Item.find(params[:id])

    render json: @item, status: 200
  end

  
  def create
    @item = Item.create(item_params)

    render json: @item, include: [:order], status: 200
  end



  
  def destroy
    @item = Item.find(params[:id])
    @item.destroy
    render json: ("This Item was successfully deleted.").to_jason
  end

  private

  def item_params
    params.require(:item).permit(:item_name, :item_price, :order_id)
   end
end
