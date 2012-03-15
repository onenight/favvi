class Brand < ActiveRecord::Base
  validates :name, :presence => true
  validates :categories, :presence => true
  validates :description, :presence => true
  
  mount_uploader :image, ImageUploader
end
