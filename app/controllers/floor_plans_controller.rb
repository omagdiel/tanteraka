class FloorPlansController < ApplicationController
  before_action :set_floor_plan_item, only:[:edit, :update, :show, :destroy]

  def index
    @floor_plans = FloorPlan.all
  end

  def show

  end

  def edit

  end

  def new
    @floor_plan = FloorPlan.new
    3.times { @floor_plan.floor_plan_images.build }
  end

  def create
    @floor_plan = FloorPlan.new(floor_plan_params)

    respond_to do |format|
      if @floor_plan.save
        format.html{ redirect_to @floor_plan, notice: 'Your Floor Plan was successfully created.'}
      else
        format.html{ render :new }
      end
    end
  end

  def update
    respond_to do |format|
      if @floor_plan.update(floor_plan_params)
        format.html{ redirect_to @floor_plan, notice: 'Your Floor Plan was successfully updated.'}
      else
        format.html{ render :edit }
      end
    end
  end

  def destroy
    @floor_plan.destroy
    respond_to do |format|
      format.html{ redirect_to floor_plans_path, notice: 'Record was successfully destroyed.'}
    end
  end

  private

  def floor_plan_params
    params.require(:floor_plan).permit(:title,
                                    :info,
                                    :main_img,
                                    :img
                                  )
  end

  def set_floor_plan_item
    @floor_plan = FloorPlan.find(params[:id])
  end
end
