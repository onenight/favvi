class Brand < ActiveRecord::Base
  validates :name, :presence => true
  validates :categories, :presence => true
  validates :description, :presence => true
  
  has_many :products
  has_many :photos, :as => :imageable, :dependent => :destroy
  accepts_nested_attributes_for :photos
  
  def self.with_photos
    includes(:photos)
  end
end
