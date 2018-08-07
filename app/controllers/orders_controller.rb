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

  # TEST STUFF. Remove/modify from Production when actual orders are set up.
  # USAGE: BookingMailer.*_order_confirmation requires an object to be sent in with an email property, as per example below. Other properties are optional and will be passed into the templates.
  def send_test_order
    # get order
    # order = Order.first
    # get customer, eg
    # customer = order.user
    # supplier = order.service.supplier

    # Test Hard Coded Values
    supplier = {
      email: 'tim.caldwell@einti.com'
    }
    customer = {
      email: 'tim.caldwell@einti.com'
    }
    
    # create & send emails
    cust_mailer = BookingMailer.customer_order_confirmation customer
    cust_response = cust_mailer.deliver_now
    cust_message_id = cust_response.mess

    supp_mailer = BookingMailer.supplier_order_confirmation supplier
    supp_response = supp_mailer.deliver_now
    supp_message_id = supp_response.mess
  end
end
