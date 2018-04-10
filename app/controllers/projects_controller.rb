class ProjectsController < ApplicationController
  before_action :set_project_item, only:[:edit, :update, :show, :destroy]

  def index
    @projects = Project.by_position
  end

  def new
    @project = Project.new
  end

  def sort
    params[:order].each do |key, value|
      Project.find(value[:id]).update(position: value[:position])
    end
    render body: nil
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
    @project.destroy
    respond_to do |format|
      format.html{ redirect_to projects_path, notice: 'Record was successfully destroyed.'}
    end
  end

  private

  def project_params
    params.require(:project).permit(:title,
                                    :info,
                                    :main_img,
                                    project_images_attributes: [:id, :image, :_destroy]
                                  )
  end

  def set_project_item
    @project = Project.find(params[:id])
  end
end
