class BookingMailer < ApplicationMailer

  def order_confirmation
    @user = 'tim.caldwell@einti.com'
    @url  = 'http://example.com/login'
    mail(to: @user, subject: 'Welcome to My Awesome Site')
  end
end
