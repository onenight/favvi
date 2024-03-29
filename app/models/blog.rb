class Blog < ActiveRecord::Base
  validates :title, :presence => true
  validates :content, :presence => true
  
  mount_uploader :image, BlogUploader
  
  belongs_to :user
  belongs_to :angel

end
