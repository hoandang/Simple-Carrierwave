class GalleriesController < ApplicationController
  def index   
    @galleries = Gallery.all
  end

  def new
    @gallery = Gallery.new
  end

  def create
    @gallery = Gallery.new(params[:gallery])
  end

  def edit
    @gallery = Gallery.find(params[:id])
  end

  def destroy
    @gallery = Gallery.find(params[:id])
    @gallery.destroy
  end

  def update
    @gallery = Gallery.find(params[:id])
    if @gallery.update_attributes(params[:gallery])
      @updated= true
    else
      @updated = false
    end
  end

  def show
    @gallery = Gallery.find(params[:id])
    @paintings = @gallery.paintings.all
  end
end
