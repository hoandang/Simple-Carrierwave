class PaintingsController < ApplicationController
  def new
    @gallery = Gallery.find(params[:gallery_id]) 
    @painting = @gallery.paintings.new
  end
  
  def create
    #uploader = ImageUploader.new
    #name = params[:painting][:image].original_filename
    #uploader.store!(name)
    #render text: params[:painting][:image].original_filename

    #params[:painting][:image].each do |img|
      #painting = gallery.paintings.create(name: "foo", image: img)
    #end
    
    gallery = Gallery.find(params[:gallery_id])
    params[:painting][:image].each do |img|
      painting = gallery.paintings.new
      painting.image = img
      unless painting.image_integrity_error then
        painting.name = img.original_filename
        painting.save
      end
    end
    #params[:painting][:image].map { |img| gallery.paintings.create(name: img.original_filename, image: img) }
    redirect_to gallery
  end

  def destroy
    gallery = Gallery.find(params[:gallery_id])
    gallery.paintings.find(params[:id]).destroy
    redirect_to gallery
  end

  def edit
    @gallery = Gallery.find(params[:gallery_id])
    @painting = @gallery.paintings.find(params[:id])
  end

  def update
    gallery = Gallery.find(params[:gallery_id])
    gallery.paintings.find(params[:id]).update_attributes(params[:painting])
    redirect_to gallery 
  end
end
