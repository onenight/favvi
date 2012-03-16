class Brand < ActiveRecord::Base
  validates :name, :presence => true
  validates :categories, :presence => true
  validates :description, :presence => true
  
  #has_many :products
  
  mount_uploader :image, ImageUploader
end
