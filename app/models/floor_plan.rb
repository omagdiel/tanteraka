class FloorPlan < ApplicationRecord
  has_many :floor_plan_images
  accepts_nested_attributes_for :floor_plan_images,
                                allow_destroy: true,
                                reject_if: lambda {|attrs| attrs['image'].blank?}
  validates_presence_of :title,
                        :info,
                        :main_img


  mount_uploader :main_img, FloorPlanUploader
end
