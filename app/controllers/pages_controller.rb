class PagesController < ApplicationController
  def home
    @projects = Project.all
  end

  def contact
    @message = Page.new
  end

  def create
    @message = Message.new message_params

    if @message.valid?
      redirect_to pages_contact_path, notice: "Your message was sent to us and we will get back with you soon."
    else
      render :new
    end
  end
  
  private

  def message_params
    params.require(:message).permit(:name, :email, :body)
  end
end
