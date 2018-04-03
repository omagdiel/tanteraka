class ProjectsController < ApplicationController
  before_action :set_project_item, only:[:edit, :update, :show, :destroy]

  def index
    @projects = Project.all
  end

  private
  
  def project_params
    params.require(:project).permit(:title,
                                    :info,
                                    :main_img,
                                    :img
                                  )
  end

  def set_project_item
    @project = Project.find(params[:id])
  end
end
