class ApplicationMailer < ActionMailer::Base
  default to: 'info@Weverso.com', from: 'info@Weverso.com'
  layout 'mailer'
end
