class Angel < ActiveRecord::Base
  has_many :blogs
  
  mount_uploader :avatar, ProductUploader
  mount_uploader :banner, ProductUploader
end
