class Painting < ActiveRecord::Base
  attr_accessible :gallery_id, :image, :name
  belongs_to :gallery
end
