class Spphoto < ApplicationRecord
  mount_uploader :file_location, SpphotoUploader
  validates_presence_of :title, :date, :description, :file_location
end
