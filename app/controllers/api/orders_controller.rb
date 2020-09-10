class Api::OrdersController < ApplicationController
  

  def index
      
      @orders = Order.all

      render json: @orders, include: [:items], status: 200
  end

  def show

      @orders = Order.find(params[:id])

      render json: @order, status: 200
  end    

  def create
      @order = Order.create(order_params)

      render json: @order, include: [:items], status: 200
  end

  def update
      @order = Order.find(params[:id])
      @order.update(order_params)

      render json: @order, status: 200
  end

  def destroy
      @order = Order.find(params[:id])
      @order.delete

      render json: {orderId: @order.id}

  end

  private
      def order_params
          params.require(:order).permit(:client_name, :phone, :address)
      end


end