class HomesController < ApplicationController
  
  def index
    @homes = Home.all
    @infos = Info.all
    @last_info = @infos.last()
    @blogs = Blog.order("created_at DESC").limit(2)
    @products = Product.order("created_at DESC").limit(3)
    @styles = Style.order("created_at DESC").limit(2)
    
    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @homes }
    end
  end

end
