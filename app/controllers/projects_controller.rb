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

    respond_to do |format|
      if @project.save
        format.html{ redirect_to @project, notice: 'Your Project was successfully created.'}
      else
        format.html{ render :new }
      end
    end
  end

  def show

  end
  
  def edit

  end

  def update
    respond_to do |format|
      if @project.update(project_params)
        format.html{ redirect_to @project, notice: 'Your Project was successfully created.'}
      else
        format.html{ render :edit }
      end
    end
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
