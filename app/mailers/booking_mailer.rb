class BookingMailer < ApplicationMailer

  def customer_order_confirmation(customer, supplier)
    @customer = customer
    @supplier = supplier
    mail(to: @customer[:user_email], subject: 'Your booking has been confirmed')
  end

  def supplier_order_confirmation(supplier, customer)
    @supplier = supplier
    @customer = customer
    mail(to: @supplier[:email], subject: 'You have a new booking')
  end
end
