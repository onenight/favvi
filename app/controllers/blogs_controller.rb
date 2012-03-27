class BlogsController < ApplicationController
  before_filter :find_angel
  before_filter :find_sidebar_blogs
  # GET /blogs
  # GET /blogs.json
  def index
    redirect_to angels_path
  end

  # GET /blogs/1
  # GET /blogs/1.json
  def show
    @blog = @angel.blogs.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render :json => @blog }
    end
  end

  # GET /blogs/new
  # GET /blogs/new.json
  def new
    @blog = @angel.blogs.build

    respond_to do |format|
      format.html # new.html.erb
      format.json { render :json => @blog }
    end
  end

  # GET /blogs/1/edit
  def edit
    @blog = @angel.blogs.find(params[:id])
  end

  # POST /blogs
  # POST /blogs.json
  def create
    @blog = @angel.blogs.build(params[:blog])
    @blog.user_id = current_user.id

    respond_to do |format|
      if @blog.save
        format.html { redirect_to angel_blog_path(@angel, @blog), :notice => 'Blog was successfully created.' }
      else
        format.html { render :action => "new" }
      end
    end
  end

  # PUT /blogs/1
  # PUT /blogs/1.json
  def update
    @blog = @angel.blogs.find(params[:id])

    respond_to do |format|
      if @blog.update_attributes(params[:blog])
        format.html { redirect_to angel_blog_path(@angel, @blog), :notice => 'Blog was successfully updated.' }
      else
        format.html { render :action => "edit" }
      end
    end
  end

  # DELETE /blogs/1
  # DELETE /blogs/1.json
  def destroy
    @blog = @angel.blogs.find(params[:id])
    @blog.destroy

    respond_to do |format|
      format.html { redirect_to angel_blogs_url(@angel) }
      format.json { head :ok }
    end
  end
  
  protected
  def find_angel
    @angel = Angel.find(params[:angel_id])
  end
  
  def find_sidebar_blogs
    @latest_blogs = Blog.order("created_at DESC").limit(10)
  end
end
