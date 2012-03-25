class Blog < ActiveRecord::Base
  validates :title, :presence => true
  validates :content, :presence => true
  
  mount_uploader :image, BlogUploader
  
  belongs_to :user
  belongs_to :angel
  
  def self.find_sidebar_blogs
    @latest_blogs = Blog.order("created_at DESC").limit(10)
  end
end
