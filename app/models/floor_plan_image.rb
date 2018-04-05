class FloorPlanImage < ApplicationRecord
  belongs_to :floor_plan

    mount_uploader :main_image, FloorPlanImageUploader
end
