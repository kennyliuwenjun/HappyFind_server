class OrdersControler < ApplicationController

  def send_test_order
    mailer = BookingMailer.order_confirmation
    mailer_response = mailer.deliver_now
    mailgun_message_id = mailer_response.mess
  end

end