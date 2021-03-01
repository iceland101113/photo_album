class MessageMailer < ApplicationMailer
 
  def notify(message)
    @message = message
    mail(to: 'iceland101113@gmail.com', subject: 'You have new mesage from Origami Website')
  end
end
