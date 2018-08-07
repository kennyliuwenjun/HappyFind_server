class OrdersController < ApplicationController

  def send_test_order
    # get order
    order = Order.first

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