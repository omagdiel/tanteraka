class FloorPlanImage < ApplicationRecord
  belongs_to :floor_plan

  mount_uploader :image, FloorPlanImageUploader
end
