class GalleriesController < ApplicationController
  def index   
    @galleries = Gallery.all
  end

  def new
    @gallery = Gallery.new
  end

  def create
    Gallery.create(params[:gallery])
    redirect_to root_path
  end

  def edit
    @gallery = Gallery.find(params[:id])
  end

  def destroy
    Gallery.find(params[:id]).destroy
    redirect_to root_path
  end

  def update
    Gallery.find(params[:id]).update_attributes(params[:gallery])
    redirect_to root_path
  end

  def show
    @gallery = Gallery.find(params[:id])
    @paintings = @gallery.paintings.all
  end
end
