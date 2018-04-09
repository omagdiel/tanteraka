class PagesController < ApplicationController
  def home
    @projects = Project.all
  end

  def contact
  end
end
