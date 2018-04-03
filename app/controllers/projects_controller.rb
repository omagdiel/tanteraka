class ProjectsController < ApplicationController
  before_action :set_project_item, only:[:edit, :update, :show, :destroy]

  def index
    @projects = Project.all
  end

  def new
    @project = Project.new
  end

  def create
    @project = Project.new(project_params)

    if @project.save
      redirect_to @project, notice: 'Your Project was successfully created.'
    else
      render :new
    end
  end

  def show

  end

  def update

  end

  def destroy

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
