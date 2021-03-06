class Project < ApplicationRecord
  has_many :project_images
  accepts_nested_attributes_for :project_images,
                                allow_destroy: true,
                                reject_if: lambda {|attrs| attrs['image'].blank?}
  validates_presence_of :title,
                        :info
                        # :main_img

  mount_uploader :main_img, ProjectUploader

  def self.by_position
    order("position ASC")
  end
end
