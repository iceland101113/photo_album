class MessagesController < ApplicationController

  def new
    @message = Message.new
  end

  def create
    @message = Message.new(message_params)
    if @message.save
      flash.now[:notice] = "Your message was successfully sent!"
      MessageMailer.notify(@message).deliver_later
    else
      flash.now[:notice] = "Your message was fail to sent!"
    end
  end

  def message_params
    params.require(:message).permit(:name, :email, :subject, :message)
  end
end
