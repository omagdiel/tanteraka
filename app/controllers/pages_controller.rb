class PagesController < ApplicationController
  def home
    @projects = Project.all
  end

  def contact
    @message = Page.new
  end

  def create
    @message = Page.new(message_params)
    respond_to do |format|
      if @message.valid?
        ContactMailer.email(@message).deliver_now
        format.html{ redirect_to contact_pages_url, notice: "Your message was sent to us and we will get back with you soon." }
      else
        render :contact
      end
    end
  end

  private

  def message_params
    params.require(:page).permit(:name, :email, :body)
  end
end
