class Style < ActiveRecord::Base
  validates :title, :presence => true
  validates :content, :presence => true
  
  mount_uploader :image, StyleUploader
end
