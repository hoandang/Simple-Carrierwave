class Painting < ActiveRecord::Base
  attr_accessible :gallery_id, :image, :name
  #before_save :remove_extension_filename
  belongs_to :gallery

  mount_uploader :image, ImageUploader  

  private
    def remove_extension_filename
      self.name = name
    end

end
