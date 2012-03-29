class Photo < ActiveRecord::Base
  attr_accessible :name, :imageable_id, :imageable_type
  
  belongs_to :imageable, :polymorphic => true
  
  mount_uploader :name, ImageUploader
end
