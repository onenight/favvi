class AngelsController < ApplicationController
  before_filter :find_sidebar_blogs

  # GET /angels
  # GET /angels.json
  def index
    @angels = Angel.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @angels }
    end
  end

  # GET /angels/1
  # GET /angels/1.json
  def show
    @angel = Angel.find(params[:id])
    @blogs = @angel.blogs

    respond_to do |format|
      format.html # show.html.erb
      format.json { render :json => @angel }
    end
  end

  # GET /angels/new
  # GET /angels/new.json
  def new
    @angel = Angel.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render :json => @angel }
    end
  end

  # GET /angels/1/edit
  def edit
    @angel = Angel.find(params[:id])
  end

  # POST /angels
  # POST /angels.json
  def create
    @angel = Angel.new(params[:angel])

    respond_to do |format|
      if @angel.save
        format.html { redirect_to @angel, :notice => 'Angel was successfully created.' }
        format.json { render :json => @angel, :status => :created, :location => @angel }
      else
        format.html { render :action => "new" }
        format.json { render :json => @angel.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /angels/1
  # PUT /angels/1.json
  def update
    @angel = Angel.find(params[:id])

    respond_to do |format|
      if @angel.update_attributes(params[:angel])
        format.html { redirect_to @angel, :notice => 'Angel was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render :action => "edit" }
        format.json { render :json => @angel.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /angels/1
  # DELETE /angels/1.json
  def destroy
    @angel = Angel.find(params[:id])
    @angel.destroy

    respond_to do |format|
      format.html { redirect_to angels_url }
      format.json { head :ok }
    end
  end
  
  protected
  def find_sidebar_blogs
    @latest_blogs = Blog.order("created_at DESC").limit(10)
  end
end
