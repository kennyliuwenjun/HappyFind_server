module MailgunHelper
  
  endpoint = "https://api.mailgun.net/v3/sandbox3ca17bd3db07410e88d1ac682d6655b8.mailgun.org"
  
  def send_email(recipient)
    puts "Sending email to #{ recipient }"
  end

end