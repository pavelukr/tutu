ActionMailer::Base.smtp_settings = {
  domain: 'YOUR_DOMAIN.COM',
  address:        "smtp.sendgrid.net",
  port:            587,
  authentication: :plain,
  user_name:      'tishkov.pavlo@gmail.com',
  password:       ENV['TUTU_SENDGRID']
}