class BookingMailer < ApplicationMailer

  def customer_order_confirmation(customer)
    @customer = customer
    mail(to: @customer[:email], subject: 'Your booking has been confirmed')
  end

  def supplier_order_confirmation(supplier)
    @supplier = supplier
    mail(to: @supplier[:email], subject: 'You have a new booking')
  end
end
