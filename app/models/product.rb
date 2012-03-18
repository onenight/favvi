class Product < ActiveRecord::Base
  validates :name, :presence => true
  validates :price, :presence => true
  validates :brand_id, :presence => true
  
  belongs_to :brand
  
  mount_uploader :image, ProductUploader
end
