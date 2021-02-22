class MessageMailer < ApplicationMailer
  default from: 'notifications@origami.com'
 
  def notify(message)
    @message = message
    mail(to: 'iceland101113@gmail.com', subject: 'You have new mesage from Origami Website')
  end
end
