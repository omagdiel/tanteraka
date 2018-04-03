class FloorPlansController < ApplicationController
  before_action :set_floor_plans_item, only:[:edit, :update, :show, :destroy]

  def index
    @floor_plans = FloorPlan.all
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
