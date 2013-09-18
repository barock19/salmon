class Contact < ActionMailer::Base
  default from: "noreply@monsalmon.herokuapp.com", to: "kartika.chandra@veritrans.co.id"
  
  def contact_email(email_body, email_sender, email_subject)
    mail(body: email_body, subject: email_subject, from: email_sender)
  end
end
