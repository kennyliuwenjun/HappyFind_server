class OrdersController < ApplicationController
  skip_before_action :verify_authenticity_token, :only => [:create]

  def new
    @services = Service.all
    @order = Order.new
  end

  # /orders/create
  # /orders/create.json
  def create
    @order = Order.new order_params
    respond_to do |format|
      if @order.save
        format.html { redirect_to orders_path }
        format.json { render :show, status: :ok }
      else
        format.html { render :new }
        format.json { ender json: {login: 'failed'}, status: :failed }
      end
    end
  end

  def index
    @orders = Order.all
  end

  def show
  end

  private
  def order_params
    params.require(:order).permit(:service_id, :date, :hours, :user_name, :user_email, :user_phone, :user_address, :payment_status)
  end
end
