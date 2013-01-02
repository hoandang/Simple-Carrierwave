class PaintingsController < ApplicationController
  def new
    @gallery = Gallery.find(params[:gallery_id]) 
    @painting = @gallery.paintings.new
  end
  
  def create
    gallery = Gallery.find(params[:gallery_id])
    @painting = gallery.paintings.create(params[:painting])
    redirect_to @painting.gallery
  end

  def destroy
    gallery = Gallery.find(params[:gallery_id])
    painting = gallery.paintings.find(params[:id])
    painting.destroy
    redirect_to painting.gallery
  end

  def edit
    @gallery = Gallery.find(params[:gallery_id])
    @painting = @gallery.paintings.find(params[:id])
  end

  def update
    gallery = Gallery.find(params[:gallery_id])
    painting = gallery.paintings.find(params[:id])
    painting.update_attributes(params[:painting])
    redirect_to painting.gallery 
  end
end
