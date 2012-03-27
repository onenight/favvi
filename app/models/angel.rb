class Angel < ActiveRecord::Base
  validates :name, :presence => true
  validates :description, :presence => true
  
  has_many :blogs
  
  mount_uploader :avatar, ProductUploader
  mount_uploader :banner, ProductUploader
end
